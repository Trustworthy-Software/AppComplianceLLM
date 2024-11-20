.class public Lcom/google/firebase/firestore/MemoryEagerGcSettings$Builder;
.super Ljava/lang/Object;
.source "MemoryEagerGcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/MemoryEagerGcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/MemoryEagerGcSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/MemoryEagerGcSettings$1;

    .line 34
    invoke-direct {p0}, Lcom/google/firebase/firestore/MemoryEagerGcSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/firestore/MemoryEagerGcSettings;
    .locals 2

    .line 39
    new-instance v0, Lcom/google/firebase/firestore/MemoryEagerGcSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/MemoryEagerGcSettings;-><init>(Lcom/google/firebase/firestore/MemoryEagerGcSettings$1;)V

    return-object v0
.end method
