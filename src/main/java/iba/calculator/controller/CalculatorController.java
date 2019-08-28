package iba.calculator.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import iba.calculator.model.Calculator;
import iba.calculator.repo.CalculatorRepo;

import java.util.HashMap;
import java.util.Map;

@Controller
public class CalculatorController {

    @Autowired
    CalculatorRepo calculatorRepo;

    @RequestMapping(value = "/calculator", method = RequestMethod.GET)
    public ModelAndView calculator() {
        Calculator calculator = new Calculator();
        ModelAndView modelAndView = new ModelAndView("calculate", "command", calculator);
        return modelAndView;
    }

    @RequestMapping(value = "/calculator", method = RequestMethod.POST)
    public String result(@ModelAttribute("calculator")
                                 Calculator calculator,
                         ModelMap model)
    {
        model.addAttribute("id", calculator.getId());
        model.addAttribute("period",calculator.getPeriod());
        model.addAttribute("amountOfRevenue", calculator.getAmountOfRevenue());
        model.addAttribute("nonOperatingIncome", calculator.getNonOperatingIncome());
        model.addAttribute("worker",calculator.isWorker());
        model.addAttribute("invalid",calculator.isInvalid());
        model.addAttribute("widower",calculator.isWidower());
        model.addAttribute("amountOfChildren", calculator.getAmountOfChildren());
        model.addAttribute("amountOfSickChildren",calculator.getAmountOfSickChildren());
        model.addAttribute("amountOfDependents",calculator.getAmountOfDependents());
        model.addAttribute("insurance",calculator.getInsurance());
        model.addAttribute("education",calculator.getEducation());
        model.addAttribute("housing",calculator.getHousing());
        model.addAttribute("business",calculator.getBusiness());
        model.addAttribute("incomeTax",calculator.getIncomeTax());

        boolean isInvalid = calculator.isInvalid();
        boolean isWidower = calculator.isWidower();
        boolean isWork = calculator.isWorker();
        int amount = Integer.parseInt(calculator.getAmountOfRevenue());
        int income = Integer.parseInt(calculator.getNonOperatingIncome());
        int period = Integer.parseInt(calculator.getPeriod());
        int business = Integer.parseInt(calculator.getBusiness());

        int step1 = amount + income;
        if(isWork) {
            int incomeTax = (step1 - business)*16/100;
            calculator.setIncomeTax(incomeTax);
            model.addAttribute("incomeTax",calculator.getIncomeTax());
            calculatorRepo.save(calculator);
        } else {
            int kids = Integer.parseInt(calculator.getAmountOfChildren());
            int sickKids = Integer.parseInt(calculator.getAmountOfSickChildren());;
            int dep = Integer.parseInt(calculator.getAmountOfDependents());
            int insur = Integer.parseInt(calculator.getInsurance());
            int edu =Integer.parseInt(calculator.getEducation());
            int house=Integer.parseInt(calculator.getHousing());

            int step2 = step1 < 15002000 ? step1 - (830000 * period) : step1;
            if (step2 < 0) step2 = 0;
            int step3 = isInvalid ? step2 - (1170000 * period) : step2;

            if (step3 < 0) step3 = 0;

            int step4 = 0;
            if (isWidower) {
                step4 = step3 - period * 460000 * (kids + dep);
            } else {
                if (kids == 1 && sickKids == 0 && dep > 0) {
                    step4 = step3 - period * 240000 * (kids + dep);
                } else if (kids == 1 && sickKids == 1 && dep > 0) {
                    step4 = step3 - period * ((kids * 460000) + (dep * 240000));
                } else {
                    step4 = step3 - period * 460000 * (kids + dep);
                }
            }
            if(step4 < 0) step4 = 0;

            int step5 = insur <= 16000000 ? step4 - insur : step4 - 16000000;
            if(step5 < 0) step5 = 0;

            int step6 = step5 - (business + house + edu);
            if(step6 < 0) step6 = 0;

            int step7 = step6*16/100;
            calculator.setIncomeTax(step7);
            model.addAttribute("incomeTax",calculator.getIncomeTax());
            calculatorRepo.save(calculator);
        }
        calculatorRepo.save(calculator);
        return "result";
    }

    @ModelAttribute("periodList")
    public Map< Integer, String > getPeriodList() {
        Map < Integer, String > periodList = new HashMap<Integer, String>();
        periodList.put(3,"квартал");
        periodList.put(6,"полгода");
        periodList.put(9,"девять месяцев");
        periodList.put(12,"год");
        return periodList;
    }

    @RequestMapping("/sort")
    public String sort(Model model) {
        model.addAttribute("results", calculatorRepo.findAll());
        return "sort";
    }
}
