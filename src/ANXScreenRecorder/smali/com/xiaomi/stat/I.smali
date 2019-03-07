.class public Lcom/xiaomi/stat/I;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/xiaomi/stat/I;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    sput-object p0, Lcom/xiaomi/stat/I;->a:Landroid/content/Context;

    .line 13
    sput-object p1, Lcom/xiaomi/stat/I;->b:Ljava/lang/String;

    .line 14
    sput-object p2, Lcom/xiaomi/stat/I;->c:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/xiaomi/stat/I;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/xiaomi/stat/I;->c:Ljava/lang/String;

    return-object v0
.end method
