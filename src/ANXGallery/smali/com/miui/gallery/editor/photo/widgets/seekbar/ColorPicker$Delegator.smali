.class abstract Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$Delegator;
.super Ljava/lang/Object;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Delegator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mDrawable:Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$Delegator;, "Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$Delegator<TD;>;"
    .local p1, "drawable":Landroid/graphics/drawable/Drawable;, "TD;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorPicker$Delegator;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    return-void
.end method


# virtual methods
.method abstract findLevel(I)I
.end method

.method abstract getColor()I
.end method
