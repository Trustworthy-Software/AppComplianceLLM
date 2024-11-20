.class public Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenOptions"
.end annotation


# instance fields
.field public includeDocumentMetadataChanges:Z

.field public includeQueryMetadataChanges:Z

.field public waitForSyncWhenOnline:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
