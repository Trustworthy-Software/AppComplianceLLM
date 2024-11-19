.class final Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;
.super Lcom/google/common/collect/ForwardingMapEntry;
.source "MutableTypeToInstanceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/MutableTypeToInstanceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnmodifiableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$12WO2KxIwAy1IhqjHhPWXgv0Osg(Ljava/util/Map$Entry;)Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;
    .locals 1

    new-instance v0, Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method private constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;, "Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry<TK;TV;>;"
    .local p1, "delegate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    .line 165
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;->delegate:Ljava/util/Map$Entry;

    .line 166
    return-void
.end method

.method static synthetic access$000(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .param p0, "x0"    # Ljava/util/Iterator;

    .line 123
    invoke-static {p0}, Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;->transformEntries(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private static transformEntries(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 161
    .local p0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static transformEntries(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 128
    .local p0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry$1;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry$1;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 123
    .local p0, "this":Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;, "Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;, "Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;->delegate:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;, "Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
