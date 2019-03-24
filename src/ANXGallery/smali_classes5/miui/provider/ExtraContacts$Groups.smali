.class public final Lmiui/provider/ExtraContacts$Groups;
.super Ljava/lang/Object;
.source "ExtraContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Groups"
.end annotation


# static fields
.field public static final CUSTOM_RINGTONE:Ljava/lang/String; = "custom_ringtone"

.field public static final GROUP_ORDER:Ljava/lang/String; = "group_order"

.field public static final SYSTEM_ID_CONTACTS:Ljava/lang/String; = "Contacts"

.field public static final SYSTEM_ID_COWORKERS:Ljava/lang/String; = "Coworkers"

.field public static final SYSTEM_ID_FAMILY:Ljava/lang/String; = "Family"

.field public static final SYSTEM_ID_FRIENDS:Ljava/lang/String; = "Friends"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translateGroupName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "systemId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .line 1167
    const/4 v0, 0x0

    .line 1168
    .local v0, "result":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1169
    const-string v1, "Contacts"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1170
    sget v1, Lcom/miui/system/internal/R$string;->group_name_contacts:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1171
    :cond_0
    const-string v1, "Friends"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1172
    sget v1, Lcom/miui/system/internal/R$string;->group_name_friends:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1173
    :cond_1
    const-string v1, "Family"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1174
    sget v1, Lcom/miui/system/internal/R$string;->group_name_family:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1175
    :cond_2
    const-string v1, "Coworkers"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1176
    sget v1, Lcom/miui/system/internal/R$string;->group_name_coworkers:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1178
    :cond_3
    move-object v0, p1

    goto :goto_0

    .line 1181
    :cond_4
    move-object v0, p2

    .line 1184
    :goto_0
    return-object v0
.end method
