.class Lmiui/util/Utf8TextUtils$CharRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Utf8TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharRange"
.end annotation


# instance fields
.field length:I

.field start:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    .line 26
    iput v0, p0, Lmiui/util/Utf8TextUtils$CharRange;->length:I

    .line 28
    return-void
.end method

.method constructor <init>(II)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    .line 26
    iput v0, p0, Lmiui/util/Utf8TextUtils$CharRange;->length:I

    .line 31
    iput p1, p0, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    .line 32
    iput p2, p0, Lmiui/util/Utf8TextUtils$CharRange;->length:I

    .line 33
    return-void
.end method


# virtual methods
.method getEndIndex()I
    .locals 2

    .line 40
    iget v0, p0, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    iget v1, p0, Lmiui/util/Utf8TextUtils$CharRange;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method isValid()Z
    .locals 1

    .line 36
    iget v0, p0, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    if-ltz v0, :cond_0

    iget v0, p0, Lmiui/util/Utf8TextUtils$CharRange;->length:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
