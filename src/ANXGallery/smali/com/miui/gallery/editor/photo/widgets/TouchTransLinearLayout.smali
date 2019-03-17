.class public Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout;
.super Landroid/widget/LinearLayout;
.source "TouchTransLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout$OnTouchEvent;
    }
.end annotation


# instance fields
.field mOnTouchEvent:Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout$OnTouchEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public getOnTouchEvent()Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout$OnTouchEvent;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout;->mOnTouchEvent:Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout$OnTouchEvent;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout;->mOnTouchEvent:Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout$OnTouchEvent;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout;->mOnTouchEvent:Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout$OnTouchEvent;

    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout$OnTouchEvent;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 44
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnTouchEvent(Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout$OnTouchEvent;)V
    .locals 0
    .param p1, "onTouchEvent"    # Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout$OnTouchEvent;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout;->mOnTouchEvent:Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout$OnTouchEvent;

    .line 23
    return-void
.end method
