.class public final Lmiui/provider/ExtraContacts$USimAccount;
.super Lmiui/provider/ExtraContacts$SimAccount;
.source "ExtraContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "USimAccount"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "USIM"

.field public static final TYPE:Ljava/lang/String; = "com.android.contacts.usim"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1297
    invoke-direct {p0}, Lmiui/provider/ExtraContacts$SimAccount;-><init>()V

    return-void
.end method
