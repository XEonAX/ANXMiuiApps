.class public Lmiui/yellowpage/YellowPageStatistic$StatsContext;
.super Ljava/lang/Object;
.source "YellowPageStatistic.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatsContext"
.end annotation


# static fields
.field public static final EMPTY:Lmiui/yellowpage/YellowPageStatistic$StatsContext;

.field private static final serialVersionUID:J = 0xddb3451eddf42a3L


# instance fields
.field private mSource:Ljava/lang/String;

.field private mSourceModuleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/yellowpage/YellowPageStatistic$StatsContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->EMPTY:Lmiui/yellowpage/YellowPageStatistic$StatsContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "srcModuleId"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSource:Ljava/lang/String;

    .line 46
    iput p2, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSourceModuleId:I

    .line 47
    return-void
.end method

.method public static parse(Landroid/content/Intent;)Lmiui/yellowpage/YellowPageStatistic$StatsContext;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "srcModuleId":I
    const-string v1, ""

    .line 63
    .local v1, "source":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 64
    const-string v2, "mid"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 65
    const-string v2, "source"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    :cond_0
    invoke-static {p0}, Lmiui/yellowpage/YellowPageStatistic;->access$000(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 70
    .local v2, "data":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 71
    const-string v3, "mid"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "srcModuleIdParam":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 77
    .end local v3    # "srcModuleIdParam":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    const-string v3, "source"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .end local v2    # "data":Landroid/net/Uri;
    :cond_2
    const-string v2, "YellowPageStatistic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/yellowpage/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v2, Lmiui/yellowpage/YellowPageStatistic$StatsContext;

    invoke-direct {v2, v1, v0}, Lmiui/yellowpage/YellowPageStatistic$StatsContext;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method

.method public static parse(Landroid/os/Bundle;)Lmiui/yellowpage/YellowPageStatistic$StatsContext;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "srcModuleId":I
    const-string v1, ""

    .line 91
    .local v1, "source":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 92
    const-string v2, "mid"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 93
    const-string v2, "source"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    :cond_0
    new-instance v2, Lmiui/yellowpage/YellowPageStatistic$StatsContext;

    invoke-direct {v2, v1, v0}, Lmiui/yellowpage/YellowPageStatistic$StatsContext;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method


# virtual methods
.method public attach(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 108
    if-nez p1, :cond_0

    .line 109
    return-void

    .line 112
    :cond_0
    const-string v0, "source"

    iget-object v1, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSource:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v0, "mid"

    iget v1, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSourceModuleId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    return-void
.end method

.method public attach(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 100
    if-nez p1, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    const-string v0, "source"

    iget-object v1, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSource:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "mid"

    iget v1, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSourceModuleId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    return-void
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceModuleId()I
    .locals 1

    .line 54
    iget v0, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSourceModuleId:I

    return v0
.end method
