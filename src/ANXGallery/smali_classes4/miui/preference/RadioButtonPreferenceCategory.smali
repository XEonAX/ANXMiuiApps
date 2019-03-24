.class public Lmiui/preference/RadioButtonPreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioButtonPreferenceCategory"


# instance fields
.field private Eu:Lmiui/preference/RadioButtonPreference;

.field private Ev:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/preference/RadioButtonPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 p1, -0x1

    iput p1, p0, Lmiui/preference/RadioButtonPreferenceCategory;->Ev:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 p1, -0x1

    iput p1, p0, Lmiui/preference/RadioButtonPreferenceCategory;->Ev:I

    .line 40
    return-void
.end method


# virtual methods
.method public addPreference(Landroid/preference/Preference;)Z
    .locals 1

    .line 66
    instance-of v0, p1, Lmiui/preference/RadioButtonPreference;

    if-eqz v0, :cond_1

    .line 69
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-result v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 74
    :cond_0
    return v0

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only RadioButtonPreference can be added toRadioButtonPreferenceCategory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCheckedPosition()I
    .locals 1

    .line 132
    iget v0, p0, Lmiui/preference/RadioButtonPreferenceCategory;->Ev:I

    return v0
.end method

.method public getCheckedPreference()Landroid/preference/Preference;
    .locals 1

    .line 123
    iget-object v0, p0, Lmiui/preference/RadioButtonPreferenceCategory;->Eu:Lmiui/preference/RadioButtonPreference;

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 137
    iget-object p2, p0, Lmiui/preference/RadioButtonPreferenceCategory;->Eu:Lmiui/preference/RadioButtonPreference;

    if-eq p1, p2, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lmiui/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroid/preference/Preference;)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lmiui/preference/RadioButtonPreferenceCategory;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    .line 141
    if-eqz p1, :cond_1

    .line 142
    invoke-interface {p1, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 144
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setCheckedPosition(I)V
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Lmiui/preference/RadioButtonPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroid/preference/Preference;)V

    .line 115
    return-void
.end method

.method public setCheckedPreference(Landroid/preference/Preference;)V
    .locals 5

    .line 95
    invoke-virtual {p0}, Lmiui/preference/RadioButtonPreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 96
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 97
    invoke-virtual {p0, v2}, Lmiui/preference/RadioButtonPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lmiui/preference/RadioButtonPreference;

    .line 98
    if-ne v3, p1, :cond_0

    .line 99
    iput-object v3, p0, Lmiui/preference/RadioButtonPreferenceCategory;->Eu:Lmiui/preference/RadioButtonPreference;

    .line 100
    iput v2, p0, Lmiui/preference/RadioButtonPreferenceCategory;->Ev:I

    .line 101
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    .line 103
    :cond_0
    invoke-virtual {v3, v1}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 96
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_1
    return-void
.end method

.method public uncheckAllPreference()V
    .locals 4

    .line 82
    invoke-virtual {p0}, Lmiui/preference/RadioButtonPreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 83
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 84
    invoke-virtual {p0, v2}, Lmiui/preference/RadioButtonPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lmiui/preference/RadioButtonPreference;

    .line 85
    invoke-virtual {v3, v1}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method
