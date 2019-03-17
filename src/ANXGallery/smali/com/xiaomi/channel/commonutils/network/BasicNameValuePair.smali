.class public Lcom/xiaomi/channel/commonutils/network/BasicNameValuePair;
.super Ljava/lang/Object;
.source "BasicNameValuePair.java"

# interfaces
.implements Lcom/xiaomi/channel/commonutils/network/NameValuePair;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    if-nez p1, :cond_0

    .line 11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/network/BasicNameValuePair;->name:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/xiaomi/channel/commonutils/network/BasicNameValuePair;->value:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/network/BasicNameValuePair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/network/BasicNameValuePair;->value:Ljava/lang/String;

    return-object v0
.end method
