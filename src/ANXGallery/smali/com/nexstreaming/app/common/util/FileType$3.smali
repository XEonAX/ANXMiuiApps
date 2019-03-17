.class Lcom/nexstreaming/app/common/util/FileType$3;
.super Lcom/nexstreaming/app/common/util/FileType$a;
.source "FileType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/app/common/util/FileType;-><init>(Ljava/lang/String;ILcom/nexstreaming/app/common/util/FileType$FileCategory;[Ljava/lang/String;[[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[[I

.field final synthetic b:Lcom/nexstreaming/app/common/util/FileType;


# direct methods
.method constructor <init>(Lcom/nexstreaming/app/common/util/FileType;[[I)V
    .locals 1

    .prologue
    .line 106
    iput-object p1, p0, Lcom/nexstreaming/app/common/util/FileType$3;->b:Lcom/nexstreaming/app/common/util/FileType;

    iput-object p2, p0, Lcom/nexstreaming/app/common/util/FileType$3;->a:[[I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nexstreaming/app/common/util/FileType$a;-><init>(Lcom/nexstreaming/app/common/util/FileType$1;)V

    return-void
.end method


# virtual methods
.method a([B)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 109
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/nexstreaming/app/common/util/FileType$3;->a:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 110
    iget-object v2, p0, Lcom/nexstreaming/app/common/util/FileType$3;->a:[[I

    aget-object v3, v2, v0

    .line 111
    array-length v2, p1

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 109
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 113
    :goto_2
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 114
    aget v4, v3, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 113
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 116
    :cond_2
    aget-byte v4, p1, v2

    aget v5, v3, v2

    int-to-byte v5, v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 119
    :cond_3
    const/4 v1, 0x1

    .line 121
    :cond_4
    return v1
.end method
