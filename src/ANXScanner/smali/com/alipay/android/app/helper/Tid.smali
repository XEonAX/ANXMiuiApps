.class public Lcom/alipay/android/app/helper/Tid;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private key:Ljava/lang/String;

.field private tid:Ljava/lang/String;

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/alipay/android/app/helper/Tid;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public getTidSeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/android/app/helper/Tid;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/alipay/android/app/helper/Tid;->time:J

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/app/helper/Tid;->tid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/alipay/android/app/helper/Tid;->tid:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setTidSeed(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/android/app/helper/Tid;->key:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/alipay/android/app/helper/Tid;->time:J

    .line 33
    return-void
.end method
