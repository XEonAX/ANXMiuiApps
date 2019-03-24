.class Lcom/miui/internal/app/ActionBarImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2

    .line 95
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    .line 97
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->a(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->a(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 101
    :cond_0
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->b(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 102
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->b(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 104
    :cond_1
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2

    .line 69
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    .line 71
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->a(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->a(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 75
    :cond_0
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->b(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 76
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->b(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 78
    :cond_1
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2

    .line 82
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    .line 84
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->a(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->a(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 88
    :cond_0
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->b(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 89
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->b(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 91
    :cond_1
    return-void
.end method
