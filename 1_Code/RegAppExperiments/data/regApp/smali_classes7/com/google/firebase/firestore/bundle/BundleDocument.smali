.class public Lcom/google/firebase/firestore/bundle/BundleDocument;
.super Ljava/lang/Object;
.source "BundleDocument.java"

# interfaces
.implements Lcom/google/firebase/firestore/bundle/BundleElement;


# instance fields
.field private document:Lcom/google/firebase/firestore/model/MutableDocument;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/model/MutableDocument;)V
    .locals 0
    .param p1, "document"    # Lcom/google/firebase/firestore/model/MutableDocument;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/firebase/firestore/bundle/BundleDocument;->document:Lcom/google/firebase/firestore/model/MutableDocument;

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 40
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 41
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/bundle/BundleDocument;

    .line 45
    .local v0, "that":Lcom/google/firebase/firestore/bundle/BundleDocument;
    iget-object v1, p0, Lcom/google/firebase/firestore/bundle/BundleDocument;->document:Lcom/google/firebase/firestore/model/MutableDocument;

    iget-object v2, v0, Lcom/google/firebase/firestore/bundle/BundleDocument;->document:Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/model/MutableDocument;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 41
    .end local v0    # "that":Lcom/google/firebase/firestore/bundle/BundleDocument;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDocument()Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundleDocument;->document:Lcom/google/firebase/firestore/model/MutableDocument;

    return-object v0
.end method

.method public getKey()Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundleDocument;->document:Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundleDocument;->document:Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/MutableDocument;->hashCode()I

    move-result v0

    return v0
.end method
