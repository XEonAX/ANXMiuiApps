.class Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1$1;
.super Ljava/lang/Object;
.source "EditAdapter.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1$1;->this$1:Lcom/miui/gallery/movie/ui/adapter/EditAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "t"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 163
    sub-float/2addr p1, v1

    .line 164
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method
