package com.alipay.test;

import android.content.Context;
import android.util.Log;
import junit.framework.Assert;

public final class a {
    public static String a = "AndroidTestCase";

    private static void b(Context context) {
        String str = "service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D";
        String a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::noBizContextTestEncoded > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::noBizContextTestEncoded > result:" + a);
        Assert.assertNotSame(str, a);
    }

    private static void c(Context context) {
        String str = "bizcontext=%7B%22aaa%22%3A%22com.sankuai.meituan.takeoutnew%22%2C%22bbb%22%3A%224.1.3%22%7D&service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D";
        String a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextTestHeadEncoded > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextTestHeadEncoded > result:" + a);
        Assert.assertNotSame(str, a);
    }

    private static void d(Context context) {
        String str = "service=mobile.securitypay.pay&bizcontext=%7B%22aaa%22%3A%22com.sankuai.meituan.takeoutnew%22%2C%22bbb%22%3A%224.1.3%22%7D&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D";
        String a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextTestMiddleEncoded > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextTestMiddleEncoded > result:" + a);
        Assert.assertNotSame(str, a);
    }

    private static void e(Context context) {
        String str = "service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D&bizcontext=%7B%22aaa%22%3A%22com.sankuai.meituan.takeoutnew%22%2C%22bbb%22%3A%224.1.3%22%7D";
        String a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextTestEndEncoded > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextTestEndEncoded > result:" + a);
        Assert.assertNotSame(str, a);
    }

    private static void f(Context context) {
        String str = "bizcontext={\"aaa\":\"com.sankuai.meituan.takeoutnew\",\"bbb\":\"4.1.3\"}&service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D";
        String a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextTestBizContextErrorEncoded > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextTestBizContextErrorEncoded > result:" + a);
        Assert.assertNotSame(str, a);
    }

    private static void g(Context context) {
        String str = "bizcontext=sdssdsd&service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D";
        String a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextTestBizContextError1Encoded > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextTestBizContextError1Encoded > result:" + a);
        Assert.assertSame(str, a);
    }

    private static void h(Context context) {
        String str = "service=\"mobile.securitypay.pay\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"¬ify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"美团订单-39280363481451541647\"&total_fee=\"31\"&body=\"美团订单-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\"";
        String a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::noBizContextTest > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::noBizContextTest > result:" + a);
        Assert.assertNotSame(str, a);
    }

    private static void i(Context context) {
        String str = "service=\"mobile.securitypay.pay\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"¬ify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"美团订单-39280363481451541647\"&total_fee=\"31\"&body=\"美团订单-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\"&bizcontext=\"{\"aaa\":\"com.sankuai.meituan.takeoutnew\",\"bbb\":\"4.1.3\"}\"";
        String a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextOnTailTest > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextOnTailTest > result:" + a);
        Assert.assertNotSame(str, a);
    }

    private static void j(Context context) {
        String str = "bizcontext=\"{\"aaa\":\"com.sankuai.meituan.takeoutnew\",\"bbb\":\"4.1.3\"}\"&service=\"mobile.securitypay.pay\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"¬ify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"美团订单-39280363481451541647\"&total_fee=\"31\"&body=\"美团订单-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\"";
        String a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextOnHeadTest > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextOnHeadTest > result:" + a);
        Assert.assertNotSame(str, a);
    }

    private static void k(Context context) {
        String str = "service=\"mobile.securitypay.pay\"&bizcontext=\"{\"aaa\":\"com.sankuai.meituan.takeoutnew\",\"bbb\":\"4.1.3\"}\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"¬ify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"美团订单-39280363481451541647\"&total_fee=\"31\"&body=\"美团订单-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\"";
        String a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextOnMiddleTest > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextOnMiddleTest > result:" + a);
        Assert.assertNotSame(str, a);
    }

    private static void l(Context context) {
        String str = "service=\"mobile.securitypay.pay\"&bizcontext=\"{\"st\":\"com.sankuai.meituan.takeoutnew\",\"av\":\"4.1.3\"}\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"¬ify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"美团订单-39280363481451541647\"&total_fee=\"31\"&body=\"美团订单-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\"";
        String a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextOnMiddleTest > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextOnMiddleTest > result:" + a);
        Assert.assertNotSame(str, a);
    }

    private static void m(Context context) {
        String str = "service=\"mobile.securitypay.pay\"&bizcontext=\"{\"stfff\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"¬ify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"美团订单-39280363481451541647\"&total_fee=\"31\"&body=\"美团订单-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\"";
        String a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextOnMiddleTest > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextOnMiddleTest > result:" + a);
        Assert.assertSame(str, a);
    }

    private static void a(Context context) {
        String str = "service=\"mobile.securitypay.pay\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"¬ify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"美团订单-39280363481451541647\"&total_fee=\"31\"&body=\"美团订单-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\"";
        String a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::noBizContextTest > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::noBizContextTest > result:" + a);
        Assert.assertNotSame(str, a);
        str = "service=\"mobile.securitypay.pay\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"¬ify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"美团订单-39280363481451541647\"&total_fee=\"31\"&body=\"美团订单-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\"&bizcontext=\"{\"aaa\":\"com.sankuai.meituan.takeoutnew\",\"bbb\":\"4.1.3\"}\"";
        a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextOnTailTest > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextOnTailTest > result:" + a);
        Assert.assertNotSame(str, a);
        str = "bizcontext=\"{\"aaa\":\"com.sankuai.meituan.takeoutnew\",\"bbb\":\"4.1.3\"}\"&service=\"mobile.securitypay.pay\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"¬ify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"美团订单-39280363481451541647\"&total_fee=\"31\"&body=\"美团订单-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\"";
        a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextOnHeadTest > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextOnHeadTest > result:" + a);
        Assert.assertNotSame(str, a);
        str = "service=\"mobile.securitypay.pay\"&bizcontext=\"{\"aaa\":\"com.sankuai.meituan.takeoutnew\",\"bbb\":\"4.1.3\"}\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"¬ify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"美团订单-39280363481451541647\"&total_fee=\"31\"&body=\"美团订单-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\"";
        a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextOnMiddleTest > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextOnMiddleTest > result:" + a);
        Assert.assertNotSame(str, a);
        str = "service=\"mobile.securitypay.pay\"&bizcontext=\"{\"st\":\"com.sankuai.meituan.takeoutnew\",\"av\":\"4.1.3\"}\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"¬ify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"美团订单-39280363481451541647\"&total_fee=\"31\"&body=\"美团订单-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\"";
        a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextOnMiddleTest > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextOnMiddleTest > result:" + a);
        Assert.assertNotSame(str, a);
        str = "service=\"mobile.securitypay.pay\"&bizcontext=\"{\"stfff\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"¬ify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"美团订单-39280363481451541647\"&total_fee=\"31\"&body=\"美团订单-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\"";
        a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextOnMiddleTest > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextOnMiddleTest > result:" + a);
        Assert.assertSame(str, a);
        str = "service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D";
        a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::noBizContextTestEncoded > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::noBizContextTestEncoded > result:" + a);
        Assert.assertNotSame(str, a);
        str = "bizcontext=%7B%22aaa%22%3A%22com.sankuai.meituan.takeoutnew%22%2C%22bbb%22%3A%224.1.3%22%7D&service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D";
        a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextTestHeadEncoded > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextTestHeadEncoded > result:" + a);
        Assert.assertNotSame(str, a);
        str = "service=mobile.securitypay.pay&bizcontext=%7B%22aaa%22%3A%22com.sankuai.meituan.takeoutnew%22%2C%22bbb%22%3A%224.1.3%22%7D&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D";
        a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextTestMiddleEncoded > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextTestMiddleEncoded > result:" + a);
        Assert.assertNotSame(str, a);
        str = "service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D&bizcontext=%7B%22aaa%22%3A%22com.sankuai.meituan.takeoutnew%22%2C%22bbb%22%3A%224.1.3%22%7D";
        a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextTestEndEncoded > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextTestEndEncoded > result:" + a);
        Assert.assertNotSame(str, a);
        str = "bizcontext={\"aaa\":\"com.sankuai.meituan.takeoutnew\",\"bbb\":\"4.1.3\"}&service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D";
        a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextTestBizContextErrorEncoded > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextTestBizContextErrorEncoded > result:" + a);
        Assert.assertNotSame(str, a);
        str = "bizcontext=sdssdsd&service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D";
        a = new com.alipay.sdk.sys.a(context).a(str);
        Log.d(a, "BizContextTestCase::hasBizContextTestBizContextError1Encoded > orderInfo:" + str);
        Log.d(a, "BizContextTestCase::hasBizContextTestBizContextError1Encoded > result:" + a);
        Assert.assertSame(str, a);
    }
}
