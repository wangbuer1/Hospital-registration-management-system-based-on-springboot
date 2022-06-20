package com.hospital.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.math.BigDecimal;

@Getter
@Setter
@ToString
public class Seek {
  public Seek() {
  }

  public Seek(String describes, String illname,String options, long days, BigDecimal price, String patientname) {
    this.describes = describes;
    this.illname = illname;
    this.options = options;
    this.days = days;
    this.price = price;
    this.patientname = patientname;
  }

  private long id;
  private String describes;
  private String illname;
  private String drugs;
  private String options;
  private long days;
  private BigDecimal price;
  private Integer patientid;
  private String patientname;
  private String doctorname;

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public String getDescribes() {
    return describes;
  }

  public void setDescribes(String describes) {
    this.describes = describes;
  }

  public String getIllname() {
    return illname;
  }

  public void setIllname(String illname) {
    this.illname = illname;
  }

  public String getDrugs() {
    return drugs;
  }

  public void setDrugs(String drugs) {
    this.drugs = drugs;
  }

  public String getOptions() {
    return options;
  }

  public void setOptions(String options) {
    this.options = options;
  }

  public long getDays() {
    return days;
  }

  public void setDays(long days) {
    this.days = days;
  }

  public BigDecimal getPrice() {
    return price;
  }

  public void setPrice(BigDecimal price) {
    this.price = price;
  }

  public Integer getPatientid() {
    return patientid;
  }

  public void setPatientid(Integer patientid) {
    this.patientid = patientid;
  }

  public String getPatientname() {
    return patientname;
  }

  public void setPatientname(String patientname) {
    this.patientname = patientname;
  }

  public String getDoctorname() {
    return doctorname;
  }

  public void setDoctorname(String doctorname) {
    this.doctorname = doctorname;
  }
}
