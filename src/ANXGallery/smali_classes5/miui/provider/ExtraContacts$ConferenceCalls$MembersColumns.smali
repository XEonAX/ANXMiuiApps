.class public Lmiui/provider/ExtraContacts$ConferenceCalls$MembersColumns;
.super Ljava/lang/Object;
.source "ExtraContacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraContacts$ConferenceCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MembersColumns"
.end annotation


# static fields
.field public static final CONFERENCE_ID:Ljava/lang/String; = "group_id"

.field public static final LABEL:Ljava/lang/String; = "label"

.field public static final NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final NUMBER:Ljava/lang/String; = "number"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
