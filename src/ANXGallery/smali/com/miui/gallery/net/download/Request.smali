.class public final Lcom/miui/gallery/net/download/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/net/download/Request$Listener;
    }
.end annotation


# instance fields
.field private mAllowedOverMetered:Z

.field private mDestination:Ljava/io/File;

.field private mHashCode:I

.field private volatile mListener:Lcom/miui/gallery/net/download/Request$Listener;

.field private mMaxRetryTimes:I

.field private mUri:Landroid/net/Uri;

.field private mVerifier:Lcom/miui/gallery/net/download/Verifier;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/io/File;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "destination"    # Ljava/io/File;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v1, 0x3

    iput v1, p0, Lcom/miui/gallery/net/download/Request;->mMaxRetryTimes:I

    .line 32
    iput-object p1, p0, Lcom/miui/gallery/net/download/Request;->mUri:Landroid/net/Uri;

    .line 33
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "http"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_0
    iput-object p2, p0, Lcom/miui/gallery/net/download/Request;->mDestination:Ljava/io/File;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    if-ne p1, p0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    instance-of v3, p1, Lcom/miui/gallery/net/download/Request;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 103
    check-cast v0, Lcom/miui/gallery/net/download/Request;

    .line 104
    .local v0, "that":Lcom/miui/gallery/net/download/Request;
    iget-object v3, v0, Lcom/miui/gallery/net/download/Request;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/miui/gallery/net/download/Request;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/miui/gallery/net/download/Request;->mDestination:Ljava/io/File;

    iget-object v4, p0, Lcom/miui/gallery/net/download/Request;->mDestination:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "that":Lcom/miui/gallery/net/download/Request;
    :cond_3
    move v1, v2

    .line 106
    goto :goto_0
.end method

.method public getDestination()Ljava/io/File;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/net/download/Request;->mDestination:Ljava/io/File;

    return-object v0
.end method

.method public getListener()Lcom/miui/gallery/net/download/Request$Listener;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/gallery/net/download/Request;->mListener:Lcom/miui/gallery/net/download/Request$Listener;

    return-object v0
.end method

.method public getMaxRetryTimes()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/miui/gallery/net/download/Request;->mMaxRetryTimes:I

    return v0
.end method

.method getNetworkType()I
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/miui/gallery/net/download/Request;->mAllowedOverMetered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/net/download/Request;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVerifier()Lcom/miui/gallery/net/download/Verifier;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/gallery/net/download/Request;->mVerifier:Lcom/miui/gallery/net/download/Verifier;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 92
    iget v0, p0, Lcom/miui/gallery/net/download/Request;->mHashCode:I

    if-nez v0, :cond_0

    .line 93
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "uri: %s, file: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/net/download/Request;->mUri:Landroid/net/Uri;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/gallery/net/download/Request;->mDestination:Ljava/io/File;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/net/download/Request;->mHashCode:I

    .line 95
    :cond_0
    iget v0, p0, Lcom/miui/gallery/net/download/Request;->mHashCode:I

    return v0
.end method

.method public setAllowedOverMetered(Z)V
    .locals 0
    .param p1, "allowedOverMetered"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/miui/gallery/net/download/Request;->mAllowedOverMetered:Z

    .line 55
    return-void
.end method

.method public setListener(Lcom/miui/gallery/net/download/Request$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/net/download/Request$Listener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/miui/gallery/net/download/Request;->mListener:Lcom/miui/gallery/net/download/Request$Listener;

    .line 79
    return-void
.end method

.method public setVerifier(Lcom/miui/gallery/net/download/Verifier;)V
    .locals 0
    .param p1, "verifier"    # Lcom/miui/gallery/net/download/Verifier;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/miui/gallery/net/download/Request;->mVerifier:Lcom/miui/gallery/net/download/Verifier;

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 87
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "uri: %s, file: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/net/download/Request;->mUri:Landroid/net/Uri;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/gallery/net/download/Request;->mDestination:Ljava/io/File;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
