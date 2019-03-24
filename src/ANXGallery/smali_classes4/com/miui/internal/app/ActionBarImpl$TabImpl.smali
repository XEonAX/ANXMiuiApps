.class public Lcom/miui/internal/app/ActionBarImpl$TabImpl;
.super Landroid/app/ActionBar$Tab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field final synthetic bD:Lcom/miui/internal/app/ActionBarImpl;

.field private bE:Landroid/app/ActionBar$TabListener;

.field private bF:Landroid/app/ActionBar$TabListener;

.field private bG:Ljava/lang/Object;

.field private bH:Ljava/lang/CharSequence;

.field private bI:Ljava/lang/CharSequence;

.field private bJ:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I


# direct methods
.method public constructor <init>(Lcom/miui/internal/app/ActionBarImpl;)V
    .locals 0

    .line 1285
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bD:Lcom/miui/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/app/ActionBar$Tab;-><init>()V

    .line 1299
    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    return-void
.end method

.method static synthetic a(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;
    .locals 0

    .line 1285
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bF:Landroid/app/ActionBar$TabListener;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;
    .locals 0

    .line 1285
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bE:Landroid/app/ActionBar$TabListener;

    return-object p0
.end method


# virtual methods
.method public getCallback()Landroid/app/ActionBar$TabListener;
    .locals 1

    .line 1315
    invoke-static {}, Lcom/miui/internal/app/ActionBarImpl;->r()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1418
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bI:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 1331
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bJ:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1351
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1356
    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1305
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bG:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1365
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bH:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .line 1398
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bD:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p0}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1399
    return-void
.end method

.method public setContentDescription(I)Landroid/app/ActionBar$Tab;
    .locals 1

    .line 1403
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bD:Lcom/miui/internal/app/ActionBarImpl;

    .line 1404
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->e(Lcom/miui/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1403
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 1

    .line 1409
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bI:Ljava/lang/CharSequence;

    .line 1410
    iget p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_0

    .line 1411
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bD:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->d(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1413
    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Landroid/app/ActionBar$Tab;
    .locals 2

    .line 1345
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bD:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1346
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 1345
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;
    .locals 1

    .line 1336
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bJ:Landroid/view/View;

    .line 1337
    iget p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_0

    .line 1338
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bD:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->d(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1340
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Landroid/app/ActionBar$Tab;
    .locals 1

    .line 1379
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bD:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->e(Lcom/miui/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;
    .locals 1

    .line 1370
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1371
    iget p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_0

    .line 1372
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bD:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->d(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1374
    :cond_0
    return-object p0
.end method

.method public setInternalTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 0

    .line 1325
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bF:Landroid/app/ActionBar$TabListener;

    .line 1326
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0

    .line 1360
    iput p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    .line 1361
    return-void
.end method

.method public setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 0

    .line 1320
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bE:Landroid/app/ActionBar$TabListener;

    .line 1321
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;
    .locals 0

    .line 1310
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bG:Ljava/lang/Object;

    .line 1311
    return-object p0
.end method

.method public setText(I)Landroid/app/ActionBar$Tab;
    .locals 1

    .line 1393
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bD:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->e(Lcom/miui/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 1

    .line 1384
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bH:Ljava/lang/CharSequence;

    .line 1385
    iget p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_0

    .line 1386
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bD:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarImpl;->d(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1388
    :cond_0
    return-object p0
.end method
