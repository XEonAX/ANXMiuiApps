.class public abstract Lcom/miui/gallery/ui/HomePageTopBarController$HomePageBar;
.super Ljava/lang/Object;
.source "HomePageTopBarController.java"

# interfaces
.implements Lcom/miui/gallery/widget/PanelItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/HomePageTopBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HomePageBar"
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mPanelManager:Lcom/miui/gallery/widget/PanelManager;

.field protected mPermanent:Z

.field protected mPriority:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/miui/gallery/widget/PanelManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "priority"    # I
    .param p3, "manager"    # Lcom/miui/gallery/widget/PanelManager;

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$HomePageBar;->mContext:Landroid/content/Context;

    .line 268
    iput-object p3, p0, Lcom/miui/gallery/ui/HomePageTopBarController$HomePageBar;->mPanelManager:Lcom/miui/gallery/widget/PanelManager;

    .line 269
    iput p2, p0, Lcom/miui/gallery/ui/HomePageTopBarController$HomePageBar;->mPriority:I

    .line 270
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController$HomePageBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController$HomePageBar;->mPriority:I

    return v0
.end method

.method public isPermanent()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController$HomePageBar;->mPermanent:Z

    return v0
.end method

.method public setPermanent(Z)V
    .locals 0
    .param p1, "permanent"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$HomePageBar;->mPermanent:Z

    .line 283
    return-void
.end method
