.class public Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
.super Ljava/lang/Object;
.source "UTPageHitHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/UTPageHitHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTPageEventObject"
.end annotation


# instance fields
.field private A:J

.field private A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private P:Z

.field private Q:Z

.field private R:Z

.field private a:Landroid/net/Uri;

.field private a:Lcom/ut/mini/UTPageStatus;

.field private ai:Ljava/lang/String;

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->A:Ljava/util/Map;

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->A:J

    .line 84
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Landroid/net/Uri;

    .line 85
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->ai:Ljava/lang/String;

    .line 86
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->aj:Ljava/lang/String;

    .line 87
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Lcom/ut/mini/UTPageStatus;

    .line 88
    iput-boolean v3, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->P:Z

    .line 89
    iput-boolean v3, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->Q:Z

    .line 90
    iput-boolean v3, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->R:Z

    .line 91
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->ak:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->ak:Ljava/lang/String;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->ai:Ljava/lang/String;

    return-object v0
.end method

.method public getPageProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->A:Ljava/util/Map;

    return-object v0
.end method

.method public getPageStatus()Lcom/ut/mini/UTPageStatus;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Lcom/ut/mini/UTPageStatus;

    return-object v0
.end method

.method public getPageStayTimstamp()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->A:J

    return-wide v0
.end method

.method public getPageUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public getRefPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->aj:Ljava/lang/String;

    return-object v0
.end method

.method public isH5Called()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->R:Z

    return v0
.end method

.method public isPageAppearCalled()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->P:Z

    return v0
.end method

.method public isSkipPage()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->Q:Z

    return v0
.end method

.method public resetPropertiesWithoutSkipFlagAndH5Flag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->A:Ljava/util/Map;

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->A:J

    .line 104
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Landroid/net/Uri;

    .line 105
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->ai:Ljava/lang/String;

    .line 106
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->aj:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Lcom/ut/mini/UTPageStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Lcom/ut/mini/UTPageStatus;

    sget-object v1, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    if-eq v0, v1, :cond_1

    .line 108
    :cond_0
    iput-object v2, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Lcom/ut/mini/UTPageStatus;

    .line 110
    :cond_1
    iput-boolean v3, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->P:Z

    .line 111
    iput-boolean v3, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->R:Z

    .line 112
    return-void
.end method

.method public setCacheKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "aCacheKey"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->ak:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setH5Called()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->R:Z

    .line 120
    return-void
.end method

.method public setPageAppearCalled()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->P:Z

    .line 132
    return-void
.end method

.method public setPageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "aPageName"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->ai:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setPageProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "aPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->A:Ljava/util/Map;

    .line 152
    return-void
.end method

.method public setPageStatus(Lcom/ut/mini/UTPageStatus;)V
    .locals 0
    .param p1, "aPageStatus"    # Lcom/ut/mini/UTPageStatus;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Lcom/ut/mini/UTPageStatus;

    .line 140
    return-void
.end method

.method public setPageStayTimstamp(J)V
    .locals 1
    .param p1, "aPageStayTimstamp"    # J

    .prologue
    .line 159
    iput-wide p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->A:J

    .line 160
    return-void
.end method

.method public setPageUrl(Landroid/net/Uri;)V
    .locals 0
    .param p1, "aPageUrl"    # Landroid/net/Uri;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->a:Landroid/net/Uri;

    .line 168
    return-void
.end method

.method public setRefPage(Ljava/lang/String;)V
    .locals 0
    .param p1, "aRefPage"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->aj:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setToSkipPage()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->Q:Z

    .line 124
    return-void
.end method
