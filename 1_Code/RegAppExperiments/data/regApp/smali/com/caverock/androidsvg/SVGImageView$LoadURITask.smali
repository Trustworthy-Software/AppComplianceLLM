.class Lcom/caverock/androidsvg/SVGImageView$LoadURITask;
.super Landroid/os/AsyncTask;
.source "SVGImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadURITask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/io/InputStream;",
        "Ljava/lang/Integer;",
        "Lcom/caverock/androidsvg/SVG;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caverock/androidsvg/SVGImageView;


# direct methods
.method private constructor <init>(Lcom/caverock/androidsvg/SVGImageView;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/caverock/androidsvg/SVGImageView;Lcom/caverock/androidsvg/SVGImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/caverock/androidsvg/SVGImageView;
    .param p2, "x1"    # Lcom/caverock/androidsvg/SVGImageView$1;

    .line 297
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;-><init>(Lcom/caverock/androidsvg/SVGImageView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;
    .locals 5
    .param p1, "is"    # [Ljava/io/InputStream;

    .line 303
    const/4 v0, 0x0

    :try_start_0
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/caverock/androidsvg/SVG;->getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v1
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :try_start_1
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 303
    return-object v1

    .line 311
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 305
    :catch_1
    move-exception v1

    .line 307
    .local v1, "e":Lcom/caverock/androidsvg/SVGParseException;
    :try_start_2
    const-string v2, "SVGImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse error loading URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    .end local v1    # "e":Lcom/caverock/androidsvg/SVGParseException;
    :try_start_3
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 315
    goto :goto_1

    :catch_2
    move-exception v0

    .line 316
    nop

    .line 317
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 313
    :goto_2
    :try_start_4
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 315
    :catch_3
    move-exception v0

    :goto_3
    throw v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 297
    check-cast p1, [Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;->doInBackground([Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/caverock/androidsvg/SVG;)V
    .locals 1
    .param p1, "svg"    # Lcom/caverock/androidsvg/SVG;

    .line 322
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    invoke-static {v0, p1}, Lcom/caverock/androidsvg/SVGImageView;->access$102(Lcom/caverock/androidsvg/SVGImageView;Lcom/caverock/androidsvg/SVG;)Lcom/caverock/androidsvg/SVG;

    .line 323
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGImageView;->access$200(Lcom/caverock/androidsvg/SVGImageView;)V

    .line 324
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 297
    check-cast p1, Lcom/caverock/androidsvg/SVG;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;->onPostExecute(Lcom/caverock/androidsvg/SVG;)V

    return-void
.end method
