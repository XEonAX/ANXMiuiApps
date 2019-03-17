.class public Lcom/miui/gallery/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static sLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x7

    sput v0, Lcom/miui/gallery/util/Log;->sLogLevel:I

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 22
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 40
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/miui/gallery/util/Log;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 46
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Lcom/miui/gallery/util/Log;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x3

    .line 52
    invoke-static {v1}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {p1, v1}, Lcom/miui/gallery/util/Log;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 58
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/miui/gallery/util/Log;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 111
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/miui/gallery/util/Log;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 117
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Lcom/miui/gallery/util/Log;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 123
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {p1, v1}, Lcom/miui/gallery/util/Log;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 129
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/miui/gallery/util/Log;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    return-void
.end method

.method private static filterSensitiveMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 235
    if-eqz p0, :cond_0

    .line 236
    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "*.*.*.*"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 238
    :cond_0
    return-object p0
.end method

.method private static getFinalTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MiuiGallery2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 171
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 183
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/miui/gallery/util/Log;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 189
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Lcom/miui/gallery/util/Log;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 195
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {p1, v1}, Lcom/miui/gallery/util/Log;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 201
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/miui/gallery/util/Log;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    return-void
.end method

.method private static varargs logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    const-string v5, ""

    .line 231
    :goto_0
    return-object v5

    .line 211
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_2

    .line 212
    aget-object v5, p1, v1

    instance-of v5, v5, [Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 213
    aget-object v5, p1, v1

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    invoke-static {v5}, Lcom/miui/gallery/util/Log;->prettyArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v1

    .line 211
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :cond_2
    const-string v2, ""

    .line 218
    .local v2, "msg":Ljava/lang/String;
    :try_start_0
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 225
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v5, p1

    if-lez v5, :cond_3

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    aget-object v5, p1, v5

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    .line 228
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "stackTrace":Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/gallery/util/Log;->filterSensitiveMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .end local v4    # "stackTrace":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 219
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "log error: the format is \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\", the args is: "

    .line 221
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 222
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    const-string v5, "MiuiGallery2"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static needLog(I)Z
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 14
    sget v0, Lcom/miui/gallery/util/Log;->sLogLevel:I

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static prettyArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    .line 242
    array-length v3, p0

    if-nez v3, :cond_0

    .line 243
    const-string v3, "[]"

    .line 255
    :goto_0
    return-object v3

    .line 246
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 248
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 249
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    :cond_1
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 18
    sput p0, Lcom/miui/gallery/util/Log;->sLogLevel:I

    .line 19
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 147
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/miui/gallery/util/Log;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x2

    .line 153
    invoke-static {v1}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Lcom/miui/gallery/util/Log;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 76
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/miui/gallery/util/Log;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 82
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Lcom/miui/gallery/util/Log;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 88
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p0}, Lcom/miui/gallery/util/Log;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {p1, v1}, Lcom/miui/gallery/util/Log;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/miui/gallery/util/Log;->needLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    :cond_0
    return-void
.end method
