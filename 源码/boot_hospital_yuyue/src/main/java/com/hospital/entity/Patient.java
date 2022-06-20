package com.hospital.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Patient {
    private Integer id;

    private String name;

    private Integer age;

    private Integer sex;

    private String address;

    private Integer hospitalizationid;

    private String drugsids;

    private Integer appointmentid;
    private String certId;
    private Integer loginid;
    private Integer isout;
    private String doctorname;
    private String username;
    private String password;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getHospitalizationid() {
        return hospitalizationid;
    }

    public void setHospitalizationid(Integer hospitalizationid) {
        this.hospitalizationid = hospitalizationid;
    }

    public String getDrugsids() {
        return drugsids;
    }

    public void setDrugsids(String drugsids) {
        this.drugsids = drugsids;
    }

    public Integer getAppointmentid() {
        return appointmentid;
    }

    public void setAppointmentid(Integer appointmentid) {
        this.appointmentid = appointmentid;
    }

    public String getCertId() {
        return certId;
    }

    public void setCertId(String certId) {
        this.certId = certId;
    }

    public Integer getLoginid() {
        return loginid;
    }

    public void setLoginid(Integer loginid) {
        this.loginid = loginid;
    }

    public Integer getIsout() {
        return isout;
    }

    public void setIsout(Integer isout) {
        this.isout = isout;
    }

    public String getDoctorname() {
        return doctorname;
    }

    public void setDoctorname(String doctorname) {
        this.doctorname = doctorname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}