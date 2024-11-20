.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteBundleCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteBundleCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteBundleCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteBundleCache;->lambda$getBundleMetadata$0(Ljava/lang/String;Landroid/database/Cursor;)Lcom/google/firebase/firestore/bundle/BundleMetadata;

    move-result-object p1

    return-object p1
.end method
