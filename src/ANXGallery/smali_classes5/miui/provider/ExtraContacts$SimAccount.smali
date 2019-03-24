.class public Lmiui/provider/ExtraContacts$SimAccount;
.super Ljava/lang/Object;
.source "ExtraContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimAccount"
.end annotation


# static fields
.field public static final ACTION_CLEAR_SIM_CONTACTS:Ljava/lang/String; = "com.android.contacts.intent.clear_sim_contacts"

.field public static final ACTION_SYNC_SIM_CONTACTS:Ljava/lang/String; = "com.android.contacts.intent.sync_sim_contacts"

.field public static final NAME:Ljava/lang/String; = "SIM"

.field public static final SIM_ANR:Ljava/lang/String; = "anr"

.field public static final SIM_EMAILS:Ljava/lang/String; = "emails"

.field public static final SIM_ID:Ljava/lang/String; = "_id"

.field public static final SIM_NEW_ANR:Ljava/lang/String; = "newAnr"

.field public static final SIM_NEW_EMAILS:Ljava/lang/String; = "newEmails"

.field public static final SIM_NEW_NUMBER:Ljava/lang/String; = "newNumber"

.field public static final SIM_NEW_TAG:Ljava/lang/String; = "newTag"

.field public static final SIM_NUMBER:Ljava/lang/String; = "number"

.field public static final SIM_TAG:Ljava/lang/String; = "tag"

.field public static final TYPE:Ljava/lang/String; = "com.android.contacts.sim"

.field public static final URI_ADN:Ljava/lang/String; = "content://icc/adn"

.field public static final URI_ADN_ISREADY:Ljava/lang/String; = "content://icc/isphonebookready"

.field public static final URI_ADN_ISUSIM:Ljava/lang/String; = "content://icc/isusimphonebook"

.field public static final URI_ADN_STORAGE:Ljava/lang/String; = "content://icc/adnstroage"

.field public static final URI_AND_LASTERROR:Ljava/lang/String; = "content://icc/lasterror"

.field public static final URI_FREE_ADN:Ljava/lang/String; = "content://icc/freeadn"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
