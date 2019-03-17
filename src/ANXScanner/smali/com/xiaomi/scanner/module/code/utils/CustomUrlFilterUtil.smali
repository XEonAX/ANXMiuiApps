.class public Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;
.super Ljava/lang/Object;
.source "CustomUrlFilterUtil.java"


# static fields
.field private static final PHONE_CHARS:Ljava/lang/String; = "0123456789+. -#*()"

.field private static final SEND_MESSAGE_KEY:Ljava/lang/String; = "smsto:"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "CustomUrl"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p0, v1

    .line 26
    .end local p0    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 18
    .restart local p0    # "result":Ljava/lang/String;
    :cond_1
    const-string v2, "smsto:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    const-string v2, "smsto:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->getEffectiveNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "effectiveNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p0, v1

    .line 23
    goto :goto_0
.end method

.method private static getEffectiveNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v4, v6

    .line 48
    :goto_0
    return-object v4

    .line 33
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "len":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 34
    const-string v7, "0123456789+. -#*()"

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    move-object v4, v6

    .line 35
    goto :goto_0

    .line 33
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 39
    :cond_2
    :try_start_0
    const-string v7, "miui.telephony.PhoneNumberUtils$PhoneNumber"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 40
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "parse"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/CharSequence;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-static {v0, v7, v8, v9}, Lcom/xiaomi/scanner/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 41
    .local v5, "object":Ljava/lang/Object;
    const-string v7, "getEffectiveNumber"

    invoke-static {v5, v7}, Lcom/xiaomi/scanner/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "number":Ljava/lang/String;
    const-string v7, "recycle"

    invoke-static {v5, v7}, Lcom/xiaomi/scanner/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v8, "call method error"

    invoke-static {v7, v8, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v6

    .line 48
    goto :goto_0
.end method
