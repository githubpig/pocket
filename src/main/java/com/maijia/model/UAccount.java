package com.maijia.model;

public class UAccount {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_account.userid
     *
     * @mbggenerated
     */
    private String userid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_account.account_id
     *
     * @mbggenerated
     */
    private String accountId;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_account.userid
     *
     * @return the value of user_account.userid
     *
     * @mbggenerated
     */
    public String getUserid() {
        return userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_account.userid
     *
     * @param userid the value for user_account.userid
     *
     * @mbggenerated
     */
    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_account.account_id
     *
     * @return the value of user_account.account_id
     *
     * @mbggenerated
     */
    public String getAccountId() {
        return accountId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_account.account_id
     *
     * @param accountId the value for user_account.account_id
     *
     * @mbggenerated
     */
    public void setAccountId(String accountId) {
        this.accountId = accountId == null ? null : accountId.trim();
    }
}