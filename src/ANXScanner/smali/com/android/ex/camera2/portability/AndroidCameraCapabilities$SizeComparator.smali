.class Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;
.super Ljava/lang/Object;
.source "AndroidCameraCapabilities.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/ex/camera2/portability/Size;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$1;

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/ex/camera2/portability/Size;Lcom/android/ex/camera2/portability/Size;)I
    .locals 2
    .param p1, "size1"    # Lcom/android/ex/camera2/portability/Size;
    .param p2, "size2"    # Lcom/android/ex/camera2/portability/Size;

    .prologue
    .line 252
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    .line 253
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 248
    check-cast p1, Lcom/android/ex/camera2/portability/Size;

    check-cast p2, Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;->compare(Lcom/android/ex/camera2/portability/Size;Lcom/android/ex/camera2/portability/Size;)I

    move-result v0

    return v0
.end method
