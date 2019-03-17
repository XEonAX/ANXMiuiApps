.class final Lcom/meicam/themehelper/NvsParseHelper$1;
.super Ljava/lang/Object;
.source "NvsParseHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meicam/themehelper/NvsParseHelper;->sortFileByModifyTime(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/meicam/themehelper/NvsImageFileDesc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/meicam/themehelper/NvsImageFileDesc;Lcom/meicam/themehelper/NvsImageFileDesc;)I
    .locals 4
    .param p1, "arg0"    # Lcom/meicam/themehelper/NvsImageFileDesc;
    .param p2, "arg1"    # Lcom/meicam/themehelper/NvsImageFileDesc;

    .prologue
    const-wide/16 v2, 0x0

    .line 200
    iget-wide v0, p1, Lcom/meicam/themehelper/NvsImageFileDesc;->fileLastTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 201
    iget-object v0, p1, Lcom/meicam/themehelper/NvsImageFileDesc;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/meicam/themehelper/NvsParseHelper;->getFileLastTime(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/meicam/themehelper/NvsImageFileDesc;->fileLastTime:J

    .line 204
    :cond_0
    iget-wide v0, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->fileLastTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 205
    iget-object v0, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/meicam/themehelper/NvsParseHelper;->getFileLastTime(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->fileLastTime:J

    .line 208
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 209
    iget-wide v0, p1, Lcom/meicam/themehelper/NvsImageFileDesc;->fileLastTime:J

    iget-wide v2, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->fileLastTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 216
    :goto_0
    return v0

    .line 211
    :cond_2
    iget-wide v0, p1, Lcom/meicam/themehelper/NvsImageFileDesc;->fileLastTime:J

    iget-wide v2, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->fileLastTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 212
    const/4 v0, 0x1

    goto :goto_0

    .line 213
    :cond_3
    iget-wide v0, p1, Lcom/meicam/themehelper/NvsImageFileDesc;->fileLastTime:J

    iget-wide v2, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->fileLastTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 214
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 197
    check-cast p1, Lcom/meicam/themehelper/NvsImageFileDesc;

    check-cast p2, Lcom/meicam/themehelper/NvsImageFileDesc;

    invoke-virtual {p0, p1, p2}, Lcom/meicam/themehelper/NvsParseHelper$1;->compare(Lcom/meicam/themehelper/NvsImageFileDesc;Lcom/meicam/themehelper/NvsImageFileDesc;)I

    move-result v0

    return v0
.end method
