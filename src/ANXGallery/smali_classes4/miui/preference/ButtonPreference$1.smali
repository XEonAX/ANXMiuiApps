.class Lmiui/preference/ButtonPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/preference/ButtonPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Et:Lmiui/preference/ButtonPreference;


# direct methods
.method constructor <init>(Lmiui/preference/ButtonPreference;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lmiui/preference/ButtonPreference$1;->Et:Lmiui/preference/ButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lmiui/preference/ButtonPreference$1;->Et:Lmiui/preference/ButtonPreference;

    invoke-static {p1}, Lmiui/preference/ButtonPreference;->a(Lmiui/preference/ButtonPreference;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lmiui/preference/ButtonPreference$1;->Et:Lmiui/preference/ButtonPreference;

    invoke-static {p1}, Lmiui/preference/ButtonPreference;->a(Lmiui/preference/ButtonPreference;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    iget-object v0, p0, Lmiui/preference/ButtonPreference$1;->Et:Lmiui/preference/ButtonPreference;

    invoke-interface {p1, v0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 80
    :cond_0
    return-void
.end method
