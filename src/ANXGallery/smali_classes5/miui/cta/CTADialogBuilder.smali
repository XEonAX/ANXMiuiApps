.class public Lmiui/cta/CTADialogBuilder;
.super Lmiui/app/AlertDialog$Builder;
.source "CTADialogBuilder.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0, p1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lmiui/cta/CTADialogBuilder;->initialize(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 29
    invoke-direct {p0, p1, p2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 31
    invoke-direct {p0, p1}, Lmiui/cta/CTADialogBuilder;->initialize(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    iput-object p1, p0, Lmiui/cta/CTADialogBuilder;->mContext:Landroid/content/Context;

    .line 36
    sget v0, Lcom/miui/system/internal/R$string;->cta_title:I

    invoke-virtual {p0, v0}, Lmiui/cta/CTADialogBuilder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/cta/CTADialogBuilder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    .line 38
    return-void
.end method


# virtual methods
.method public setNegativeButton(Landroid/content/DialogInterface$OnClickListener;)Lmiui/cta/CTADialogBuilder;
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 58
    sget v0, Lcom/miui/system/internal/R$string;->cta_button_quit:I

    invoke-virtual {p0, v0, p1}, Lmiui/cta/CTADialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 59
    return-object p0
.end method

.method public setPositiveButton(Landroid/content/DialogInterface$OnClickListener;)Lmiui/cta/CTADialogBuilder;
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 47
    sget v0, Lcom/miui/system/internal/R$string;->cta_button_continue:I

    invoke-virtual {p0, v0, p1}, Lmiui/cta/CTADialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 48
    return-object p0
.end method
