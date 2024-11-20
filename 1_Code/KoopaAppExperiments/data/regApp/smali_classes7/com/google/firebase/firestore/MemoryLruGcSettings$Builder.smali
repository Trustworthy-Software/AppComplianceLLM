.class public Lcom/google/firebase/firestore/MemoryLruGcSettings$Builder;
.super Ljava/lang/Object;
.source "MemoryLruGcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/MemoryLruGcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private sizeBytes:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lcom/google/firebase/firestore/MemoryLruGcSettings$Builder;->sizeBytes:J

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/MemoryLruGcSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/MemoryLruGcSettings$1;

    .line 30
    invoke-direct {p0}, Lcom/google/firebase/firestore/MemoryLruGcSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/firestore/MemoryLruGcSettings;
    .locals 4

    .line 37
    new-instance v0, Lcom/google/firebase/firestore/MemoryLruGcSettings;

    iget-wide v1, p0, Lcom/google/firebase/firestore/MemoryLruGcSettings$Builder;->sizeBytes:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/firestore/MemoryLruGcSettings;-><init>(JLcom/google/firebase/firestore/MemoryLruGcSettings$1;)V

    return-object v0
.end method

.method public setSizeBytes(J)Lcom/google/firebase/firestore/MemoryLruGcSettings$Builder;
    .locals 0
    .param p1, "size"    # J

    .line 53
    iput-wide p1, p0, Lcom/google/firebase/firestore/MemoryLruGcSettings$Builder;->sizeBytes:J

    .line 54
    return-object p0
.end method
