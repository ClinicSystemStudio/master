# Stripe Payment Link Setup

## 1. Create your Stripe Payment Link

Create a payment link for your consultation deposit.

Example:
- Product: Consultation Deposit
- Price: £30

## 2. Set the success redirect URL

Use this format:

```text
https://yourdomain.com/booking.html?session_id={CHECKOUT_SESSION_ID}

For testing on Cloudflare Pages:

https://your-project.pages.dev/booking.html?session_id={CHECKOUT_SESSION_ID}

In Stripe, make sure you set:

After payment → Redirect URL

To:

https://yourdomain.com/booking.html?session_id={CHECKOUT_SESSION_ID}

Or for your test site:

https://master-aji.pages.dev/booking.html?session_id={CHECKOUT_SESSION_ID}
