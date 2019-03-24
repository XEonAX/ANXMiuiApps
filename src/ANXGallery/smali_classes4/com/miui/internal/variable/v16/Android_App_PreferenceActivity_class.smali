.class public Lcom/miui/internal/variable/v16/Android_App_PreferenceActivity_class;
.super Lcom/miui/internal/variable/Android_App_PreferenceActivity_class;
.source "SourceFile"


# static fields
.field private static final lj:Ljava/lang/String; = "android"

.field private static final lk:Ljava/lang/String; = "id"

.field private static final ll:Ljava/lang/String; = "headers"

.field private static final lm:Ljava/lang/String; = "prefs_frame"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_App_PreferenceActivity_class;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "headers"

    const-string v1, "id"

    const-string v2, "android"

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_0

    .line 27
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 30
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v2, "prefs_frame"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 36
    if-lez p2, :cond_1

    .line 37
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 43
    :cond_1
    return-void
.end method
