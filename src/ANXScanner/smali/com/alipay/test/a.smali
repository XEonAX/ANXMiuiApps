.class public final Lcom/alipay/test/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "AndroidTestCase"

    sput-object v0, Lcom/alipay/test/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 14
    .line 1084
    const-string v0, "service=\"mobile.securitypay.pay\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"\u00acify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&total_fee=\"31\"&body=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\""

    .line 1085
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1086
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::noBizContextTest > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::noBizContextTest > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1093
    const-string v0, "service=\"mobile.securitypay.pay\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"\u00acify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&total_fee=\"31\"&body=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\"&bizcontext=\"{\"aaa\":\"com.sankuai.meituan.takeoutnew\",\"bbb\":\"4.1.3\"}\""

    .line 1094
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1095
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnTailTest > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnTailTest > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1102
    const-string v0, "bizcontext=\"{\"aaa\":\"com.sankuai.meituan.takeoutnew\",\"bbb\":\"4.1.3\"}\"&service=\"mobile.securitypay.pay\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"\u00acify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&total_fee=\"31\"&body=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\""

    .line 1103
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1104
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnHeadTest > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnHeadTest > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1111
    const-string v0, "service=\"mobile.securitypay.pay\"&bizcontext=\"{\"aaa\":\"com.sankuai.meituan.takeoutnew\",\"bbb\":\"4.1.3\"}\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"\u00acify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&total_fee=\"31\"&body=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\""

    .line 1112
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1113
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnMiddleTest > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnMiddleTest > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1120
    const-string v0, "service=\"mobile.securitypay.pay\"&bizcontext=\"{\"st\":\"com.sankuai.meituan.takeoutnew\",\"av\":\"4.1.3\"}\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"\u00acify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&total_fee=\"31\"&body=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\""

    .line 1121
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1122
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnMiddleTest > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnMiddleTest > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1129
    const-string v0, "service=\"mobile.securitypay.pay\"&bizcontext=\"{\"stfff\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"\u00acify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&total_fee=\"31\"&body=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\""

    .line 1130
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1131
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnMiddleTest > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnMiddleTest > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2030
    const-string v0, "service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D"

    .line 2031
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2032
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::noBizContextTestEncoded > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::noBizContextTestEncoded > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2039
    const-string v0, "bizcontext=%7B%22aaa%22%3A%22com.sankuai.meituan.takeoutnew%22%2C%22bbb%22%3A%224.1.3%22%7D&service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D"

    .line 2040
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2041
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestHeadEncoded > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestHeadEncoded > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2048
    const-string v0, "service=mobile.securitypay.pay&bizcontext=%7B%22aaa%22%3A%22com.sankuai.meituan.takeoutnew%22%2C%22bbb%22%3A%224.1.3%22%7D&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D"

    .line 2049
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2050
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestMiddleEncoded > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestMiddleEncoded > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2057
    const-string v0, "service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D&bizcontext=%7B%22aaa%22%3A%22com.sankuai.meituan.takeoutnew%22%2C%22bbb%22%3A%224.1.3%22%7D"

    .line 2058
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2059
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestEndEncoded > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestEndEncoded > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2066
    const-string v0, "bizcontext={\"aaa\":\"com.sankuai.meituan.takeoutnew\",\"bbb\":\"4.1.3\"}&service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D"

    .line 2067
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2068
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestBizContextErrorEncoded > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestBizContextErrorEncoded > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2075
    const-string v0, "bizcontext=sdssdsd&service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D"

    .line 2076
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2077
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestBizContextError1Encoded > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestBizContextError1Encoded > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 30
    const-string v0, "service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D"

    .line 31
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::noBizContextTestEncoded > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::noBizContextTestEncoded > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 39
    const-string v0, "bizcontext=%7B%22aaa%22%3A%22com.sankuai.meituan.takeoutnew%22%2C%22bbb%22%3A%224.1.3%22%7D&service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D"

    .line 40
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestHeadEncoded > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestHeadEncoded > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 48
    const-string v0, "service=mobile.securitypay.pay&bizcontext=%7B%22aaa%22%3A%22com.sankuai.meituan.takeoutnew%22%2C%22bbb%22%3A%224.1.3%22%7D&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D"

    .line 49
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestMiddleEncoded > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestMiddleEncoded > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 57
    const-string v0, "service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D&bizcontext=%7B%22aaa%22%3A%22com.sankuai.meituan.takeoutnew%22%2C%22bbb%22%3A%224.1.3%22%7D"

    .line 58
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestEndEncoded > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestEndEncoded > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 66
    const-string v0, "bizcontext={\"aaa\":\"com.sankuai.meituan.takeoutnew\",\"bbb\":\"4.1.3\"}&service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D"

    .line 67
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestBizContextErrorEncoded > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestBizContextErrorEncoded > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method private static g(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 75
    const-string v0, "bizcontext=sdssdsd&service=mobile.securitypay.pay&partner=2088201962473581&_input_charset=utf-8&out_trade_no=39280363481451541647&sign_type=RSA&sign=bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D"

    .line 76
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestBizContextError1Encoded > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextTestBizContextError1Encoded > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method private static h(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 84
    const-string v0, "service=\"mobile.securitypay.pay\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"\u00acify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&total_fee=\"31\"&body=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\""

    .line 85
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::noBizContextTest > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::noBizContextTest > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method private static i(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 93
    const-string v0, "service=\"mobile.securitypay.pay\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"\u00acify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&total_fee=\"31\"&body=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\"&bizcontext=\"{\"aaa\":\"com.sankuai.meituan.takeoutnew\",\"bbb\":\"4.1.3\"}\""

    .line 94
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnTailTest > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnTailTest > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method private static j(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 102
    const-string v0, "bizcontext=\"{\"aaa\":\"com.sankuai.meituan.takeoutnew\",\"bbb\":\"4.1.3\"}\"&service=\"mobile.securitypay.pay\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"\u00acify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&total_fee=\"31\"&body=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\""

    .line 103
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnHeadTest > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnHeadTest > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method private static k(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 111
    const-string v0, "service=\"mobile.securitypay.pay\"&bizcontext=\"{\"aaa\":\"com.sankuai.meituan.takeoutnew\",\"bbb\":\"4.1.3\"}\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"\u00acify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&total_fee=\"31\"&body=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\""

    .line 112
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnMiddleTest > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnMiddleTest > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method private static l(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 120
    const-string v0, "service=\"mobile.securitypay.pay\"&bizcontext=\"{\"st\":\"com.sankuai.meituan.takeoutnew\",\"av\":\"4.1.3\"}\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"\u00acify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&total_fee=\"31\"&body=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\""

    .line 121
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnMiddleTest > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnMiddleTest > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method private static m(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 129
    const-string v0, "service=\"mobile.securitypay.pay\"&bizcontext=\"{\"stfff\"&partner=\"2088201962473581\"&_input_charset=\"utf-8\"\u00acify_url=\"https://paygate-yf.meituan.com/paygate/notify/alipay/paynotify/simple\"&payment_type=\"1\"&seller_id=\"2088201962473581\"&out_trade_no=\"39280363481451541647\"&subject=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&total_fee=\"31\"&body=\"\u7f8e\u56e2\u8ba2\u5355-39280363481451541647\"&sign_type=\"RSA\"&sign=\"bizd1DZAlBr071VbT%2Fpq8ECCRvp539A%2Bk1j4B6slj%2F%2Bvk8HvwtkQE4PNWc%2FkqYjc5%2FsPONw4QOqEQkzYvoiuVATWxbyQmsCJ%2FDgvkGVlKtvyo6NX8HbSycCiDHWR2gaqJRI3JrAqT9lGxZAxTnmUE8MNnhRWfoNZJHX2%2BoXLs8U%3D\""

    .line 130
    new-instance v1, Lcom/alipay/sdk/sys/a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnMiddleTest > orderInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v2, Lcom/alipay/test/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BizContextTestCase::hasBizContextOnMiddleTest > result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    return-void
.end method
