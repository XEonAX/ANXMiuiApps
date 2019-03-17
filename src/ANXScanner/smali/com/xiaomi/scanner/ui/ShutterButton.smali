.class public Lcom/xiaomi/scanner/ui/ShutterButton;
.super Landroid/widget/ImageView;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOldPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->mListeners:Ljava/util/List;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/ui/ShutterButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/ShutterButton;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 98
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;

    .line 99
    .local v0, "listener":Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;
    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 101
    .end local v0    # "listener":Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnShutterButtonListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 60
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ShutterButton;->isPressed()Z

    move-result v0

    .line 61
    .local v0, "pressed":Z
    iget-boolean v1, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 62
    if-nez v0, :cond_1

    .line 84
    new-instance v1, Lcom/xiaomi/scanner/ui/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/scanner/ui/ShutterButton$1;-><init>(Lcom/xiaomi/scanner/ui/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/ui/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 93
    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->mOldPressed:Z

    .line 95
    :cond_0
    return-void

    .line 91
    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 4

    .prologue
    .line 105
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v1

    .line 106
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ShutterButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;

    .line 108
    .local v0, "listener":Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;
    invoke-interface {v0}, Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonClick()V

    goto :goto_0

    .line 111
    .end local v0    # "listener":Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;
    :cond_0
    return v1
.end method

.method public removeOnShutterButtonListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ShutterButton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 117
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 118
    .local v0, "alpha":F
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/ShutterButton;->setAlpha(F)V

    .line 119
    return-void

    .line 117
    .end local v0    # "alpha":F
    :cond_0
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method
