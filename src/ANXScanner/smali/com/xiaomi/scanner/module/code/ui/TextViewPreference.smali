.class public Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;
.super Landroid/preference/Preference;
.source "TextViewPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;
    }
.end annotation


# instance fields
.field mImageView:Landroid/widget/ImageView;

.field private mIsShow:Z

.field private mListener:Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const v0, 0x7f030059

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->setLayoutResource(I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isShow"    # Z

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-boolean p2, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->mIsShow:Z

    .line 26
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 27
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;)Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->mListener:Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 45
    const v0, 0x7f0d0122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->mImageView:Landroid/widget/ImageView;

    .line 46
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->mImageView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->mIsShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$1;-><init>(Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void

    .line 46
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setOnSmsClickListener(Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->mListener:Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;

    .line 59
    return-void
.end method
