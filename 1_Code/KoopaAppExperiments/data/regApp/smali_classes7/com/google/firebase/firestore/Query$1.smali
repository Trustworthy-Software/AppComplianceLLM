.class Lcom/google/firebase/firestore/Query$1;
.super Ljava/util/ArrayList;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/Query;->aggregate(Lcom/google/firebase/firestore/AggregateField;[Lcom/google/firebase/firestore/AggregateField;)Lcom/google/firebase/firestore/AggregateQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/google/firebase/firestore/AggregateField;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/firestore/Query;

.field final synthetic val$aggregateField:Lcom/google/firebase/firestore/AggregateField;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/AggregateField;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/firestore/Query;

    .line 1209
    iput-object p1, p0, Lcom/google/firebase/firestore/Query$1;->this$0:Lcom/google/firebase/firestore/Query;

    iput-object p2, p0, Lcom/google/firebase/firestore/Query$1;->val$aggregateField:Lcom/google/firebase/firestore/AggregateField;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1211
    invoke-virtual {p0, p2}, Lcom/google/firebase/firestore/Query$1;->add(Ljava/lang/Object;)Z

    .line 1212
    return-void
.end method
