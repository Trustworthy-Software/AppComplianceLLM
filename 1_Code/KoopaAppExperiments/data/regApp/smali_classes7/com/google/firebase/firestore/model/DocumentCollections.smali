.class public Lcom/google/firebase/firestore/model/DocumentCollections;
.super Ljava/lang/Object;
.source "DocumentCollections.java"


# static fields
.field private static final EMPTY_DOCUMENT_MAP:Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder;->emptyMap(Ljava/util/Comparator;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/model/DocumentCollections;->EMPTY_DOCUMENT_MAP:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptyDocumentMap()Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/google/firebase/firestore/model/DocumentCollections;->EMPTY_DOCUMENT_MAP:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-object v0
.end method

.method public static emptyMutableDocumentMap()Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/google/firebase/firestore/model/DocumentCollections;->EMPTY_DOCUMENT_MAP:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-object v0
.end method

.method public static emptyVersionMap()Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            ">;"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/google/firebase/firestore/model/DocumentCollections;->EMPTY_DOCUMENT_MAP:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-object v0
.end method
