# CLINIC BOOKING SYSTEM – SETUP GUIDE

## Overview

This system allows you to:

* Take bookings online
* Accept deposits via Stripe
* Prevent double bookings
* Manage appointments in a private dashboard
* Send reminders and notifications

No monthly fees. Fully owned by you.

---

## Step 1 – Upload Website

1. Create a free Cloudflare account
2. Go to **Pages → Create Project**
3. Upload the **/pages folder**

---

## Step 2 – Create Database

1. Go to **Cloudflare → D1**
2. Create database: `clinic_db`
3. Open **Console**
4. Paste contents of `schema.sql`
5. Run it

---

## Step 3 – Deploy Worker

1. Go to **Workers**
2. Create new Worker
3. Paste contents of `api.js`
4. Connect your D1 database

---

## Step 4 – Add Environment Variables

Add these:

* RESEND_API_KEY
* FROM_EMAIL
* ADMIN_EMAIL
* BUSINESS_NAME
* BUSINESS_DOMAIN

---

## Step 5 – Configure Your Business

Open:

`/config/config.js`

Edit:

* Business name
* Logo
* Email
* Opening hours

---

## Step 6 – Stripe Setup

1. Go to Stripe
2. Create a **Payment Link**
3. Copy the link
4. Paste into:

```js
depositPaymentLink: "YOUR LINK HERE"
```

---

## Step 7 – Go Live

Your system is now live.

Clients can:

* Pay deposit
* Book appointments
* Reschedule
* Cancel

---

## Support

This is a self-hosted system. No ongoing fees.



# HOW THIS SYSTEM GETS YOU MORE CLIENTS

## 1. Deposit-first booking

Clients must pay before booking
→ Reduces time wasters
→ Protects your calendar

---

## 2. Structured client flow

Consultation → Payment → Booking → Treatment
→ Creates a premium experience
→ Increases trust

---

## 3. Automated follow-up

Aftercare emails improve:

* Client satisfaction
* Repeat bookings
* Reviews

---

## 4. Full control

No platforms
No subscriptions
No restrictions

You own your system.

