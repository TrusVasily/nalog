package iba.calculator.model;

import javax.persistence.*;

@Entity
@Table(name = "Calculator")
public class Calculator {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private String period;
    private String amountOfRevenue;
    private String nonOperatingIncome;
    private boolean worker;
    private boolean invalid;
    private boolean widower;
    private String amountOfChildren;
    private String amountOfSickChildren;
    private String amountOfDependents;
    private String insurance;
    private String education;
    private String housing;
    private String business;
    private Integer incomeTax;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getPeriod() {
        return period;
    }

    public void setPeriod(String period) {
        this.period = period;
    }

    public String getAmountOfRevenue() {
        return amountOfRevenue;
    }

    public void setAmountOfRevenue(String amountOfRevenue) {
        this.amountOfRevenue = amountOfRevenue;
    }

    public String getNonOperatingIncome() {
        return nonOperatingIncome;
    }

    public void setNonOperatingIncome(String nonOperatingIncome) {
        this.nonOperatingIncome = nonOperatingIncome;
    }

    public boolean isWorker() {
        return worker;
    }

    public void setWorker(boolean worker) {
        this.worker = worker;
    }

    public boolean isInvalid() {
        return invalid;
    }

    public void setInvalid(boolean invalid) {
        this.invalid = invalid;
    }

    public boolean isWidower() {
        return widower;
    }

    public void setWidower(boolean widower) {
        this.widower = widower;
    }

    public String getAmountOfChildren() {
        return amountOfChildren;
    }

    public void setAmountOfChildren(String amountOfChildren) {
        this.amountOfChildren = amountOfChildren;
    }

    public String getAmountOfSickChildren() {
        return amountOfSickChildren;
    }

    public void setAmountOfSickChildren(String amountOfSickChildren) {
        this.amountOfSickChildren = amountOfSickChildren;
    }

    public String getAmountOfDependents() {
        return amountOfDependents;
    }

    public void setAmountOfDependents(String amountOfDependents) {
        this.amountOfDependents = amountOfDependents;
    }

    public String getInsurance() {
        return insurance;
    }

    public void setInsurance(String insurance) {
        this.insurance = insurance;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getHousing() {
        return housing;
    }

    public void setHousing(String housing) {
        this.housing = housing;
    }

    public String getBusiness() {
        return business;
    }

    public void setBusiness(String business) {
        this.business = business;
    }

    public Integer getIncomeTax() {
        return incomeTax;
    }

    public void setIncomeTax(Integer incomeTax) {
        this.incomeTax = incomeTax;
    }
}