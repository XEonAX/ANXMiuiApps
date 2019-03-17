.class public abstract Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$AnimationAttributes;
.super Ljava/lang/Object;
.source "OverScrollBounceEffectDecoratorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AnimationAttributes"
.end annotation


# instance fields
.field public mAbsOffset:F

.field public mMaxOffset:F

.field public mProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract init(Landroid/view/View;)V
.end method
