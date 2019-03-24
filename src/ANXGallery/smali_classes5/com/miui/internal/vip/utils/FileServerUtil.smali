.class public Lcom/miui/internal/vip/utils/FileServerUtil;
.super Ljava/lang/Object;
.source "FileServerUtil.java"


# static fields
.field static final MARKET_FILE:Ljava/util/regex/Pattern;

.field static final SPECIAL_DIR:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "FileServerUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    const-string v0, "MiVip/"

    const-string v1, "AppStore/"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/vip/utils/FileServerUtil;->SPECIAL_DIR:[Ljava/lang/String;

    .line 11
    const-string v0, "^[0-9a-z]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/vip/utils/FileServerUtil;->MARKET_FILE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUrlName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 15
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 16
    .local v0, "urlLocal":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    return-object v1
.end method

.method public static indexOfSpecialDir(Ljava/lang/String;)I
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .line 20
    const/4 v0, -0x1

    .line 21
    .local v0, "index":I
    if-nez p0, :cond_0

    .line 22
    return v0

    .line 24
    :cond_0
    sget-object v1, Lcom/miui/internal/vip/utils/FileServerUtil;->SPECIAL_DIR:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 25
    .local v4, "dir":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 26
    if-ltz v0, :cond_1

    .line 27
    goto :goto_1

    .line 24
    .end local v4    # "dir":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :cond_2
    :goto_1
    return v0
.end method

.method public static isFileOnMarketServer(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 34
    invoke-static {p0}, Lcom/miui/internal/vip/utils/FileServerUtil;->getUrlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "name":Ljava/lang/String;
    invoke-static {p0}, Lcom/miui/internal/vip/utils/FileServerUtil;->indexOfSpecialDir(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v1, Lcom/miui/internal/vip/utils/FileServerUtil;->MARKET_FILE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
