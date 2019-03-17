.class Lcom/miui/gallery/app/BottomMenuDelegateImpl$1;
.super Lcom/miui/gallery/view/ActionBarWrapper;
.source "BottomMenuDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/BottomMenuDelegateImpl;->wrapActionBar(Lmiui/app/ActionBar;)Lmiui/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/BottomMenuDelegateImpl;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/BottomMenuDelegateImpl;Lmiui/app/ActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/app/BottomMenuDelegateImpl;
    .param p2, "wrapped"    # Lmiui/app/ActionBar;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl$1;->this$0:Lcom/miui/gallery/app/BottomMenuDelegateImpl;

    invoke-direct {p0, p2}, Lcom/miui/gallery/view/ActionBarWrapper;-><init>(Lmiui/app/ActionBar;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/miui/gallery/view/ActionBarWrapper;->hide()V

    .line 117
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl$1;->this$0:Lcom/miui/gallery/app/BottomMenuDelegateImpl;

    invoke-static {v0}, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->access$100(Lcom/miui/gallery/app/BottomMenuDelegateImpl;)V

    .line 118
    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/miui/gallery/view/ActionBarWrapper;->setShowHideAnimationEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl$1;->this$0:Lcom/miui/gallery/app/BottomMenuDelegateImpl;

    invoke-static {v0, p1}, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->access$200(Lcom/miui/gallery/app/BottomMenuDelegateImpl;Z)V

    .line 124
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/miui/gallery/view/ActionBarWrapper;->show()V

    .line 111
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl$1;->this$0:Lcom/miui/gallery/app/BottomMenuDelegateImpl;

    invoke-static {v0}, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->access$000(Lcom/miui/gallery/app/BottomMenuDelegateImpl;)V

    .line 112
    return-void
.end method
