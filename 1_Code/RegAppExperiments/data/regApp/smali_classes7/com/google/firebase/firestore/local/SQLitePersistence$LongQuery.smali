.class Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;
.super Ljava/lang/Object;
.source "SQLitePersistence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/SQLitePersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LongQuery"
.end annotation


# static fields
.field private static final LIMIT:I = 0x384


# instance fields
.field private final argsHead:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final argsIter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final db:Lcom/google/firebase/firestore/local/SQLitePersistence;

.field private final head:Ljava/lang/String;

.field private subqueriesPerformed:I

.field private final tail:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "db"    # Lcom/google/firebase/firestore/local/SQLitePersistence;
    .param p2, "head"    # Ljava/lang/String;
    .param p4, "tail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/local/SQLitePersistence;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 627
    .local p3, "allArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->subqueriesPerformed:I

    .line 628
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 629
    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->head:Ljava/lang/String;

    .line 630
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->argsHead:Ljava/util/List;

    .line 631
    iput-object p4, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->tail:Ljava/lang/String;

    .line 633
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->argsIter:Ljava/util/Iterator;

    .line 634
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/firestore/local/SQLitePersistence;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "db"    # Lcom/google/firebase/firestore/local/SQLitePersistence;
    .param p2, "head"    # Ljava/lang/String;
    .param p5, "tail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/local/SQLitePersistence;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 647
    .local p3, "argsHead":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p4, "allArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->subqueriesPerformed:I

    .line 648
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    .line 649
    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->head:Ljava/lang/String;

    .line 650
    iput-object p3, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->argsHead:Ljava/util/List;

    .line 651
    iput-object p5, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->tail:Ljava/lang/String;

    .line 653
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->argsIter:Ljava/util/Iterator;

    .line 654
    return-void
.end method

.method private getNextSubqueryArgs()[Ljava/lang/Object;
    .locals 3

    .line 662
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->argsHead:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 663
    .local v0, "subqueryArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->argsIter:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->argsHead:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rsub-int v2, v2, 0x384

    if-ge v1, v2, :cond_0

    .line 664
    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->argsIter:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 666
    .end local v1    # "i":I
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method executeNextSubquery()V
    .locals 6

    .line 679
    iget v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->subqueriesPerformed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->subqueriesPerformed:I

    .line 680
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->getNextSubqueryArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 681
    .local v0, "subqueryArgs":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->head:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    const-string v4, ", "

    const-string v5, "?"

    invoke-static {v5, v3, v4}, Lcom/google/firebase/firestore/util/Util;->repeatSequence(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->tail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    return-void
.end method

.method getSubqueriesPerformed()I
    .locals 1

    .line 686
    iget v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->subqueriesPerformed:I

    return v0
.end method

.method hasMoreSubqueries()Z
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->argsIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method performNextSubquery()Lcom/google/firebase/firestore/local/SQLitePersistence$Query;
    .locals 6

    .line 671
    iget v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->subqueriesPerformed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->subqueriesPerformed:I

    .line 672
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->getNextSubqueryArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 673
    .local v0, "subqueryArgs":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->head:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    const-string v4, ", "

    const-string v5, "?"

    invoke-static {v5, v3, v4}, Lcom/google/firebase/firestore/util/Util;->repeatSequence(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$LongQuery;->tail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    .line 674
    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v1

    .line 673
    return-object v1
.end method
