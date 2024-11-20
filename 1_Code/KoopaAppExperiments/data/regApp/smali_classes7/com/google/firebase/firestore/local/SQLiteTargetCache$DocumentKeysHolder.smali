.class Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;
.super Ljava/lang/Object;
.source "SQLiteTargetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/SQLiteTargetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DocumentKeysHolder"
.end annotation


# instance fields
.field keys:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;->keys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/local/SQLiteTargetCache$1;

    .line 301
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;-><init>()V

    return-void
.end method
