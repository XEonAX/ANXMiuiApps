.class Lmiui/widget/Rotation3DLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/Rotation3DLayout;->resetRotation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Yq:Lmiui/widget/Rotation3DLayout;


# direct methods
.method constructor <init>(Lmiui/widget/Rotation3DLayout;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lmiui/widget/Rotation3DLayout$2;->Yq:Lmiui/widget/Rotation3DLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 171
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 172
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout$2;->Yq:Lmiui/widget/Rotation3DLayout;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lmiui/widget/Rotation3DLayout;->a(Lmiui/widget/Rotation3DLayout;FZ)V

    .line 173
    return-void
.end method
