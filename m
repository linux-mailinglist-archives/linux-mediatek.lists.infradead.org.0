Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DE1387F3
	for <lists+linux-mediatek@lfdr.de>; Fri,  7 Jun 2019 12:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jl2K6UUm9qKp3mbi3yvmeNMUwLY/L6sT6l264l6HnKo=; b=uhqC4At4dgnBD7MTcHhgYOynn
	OPBUyrhh8HKDnrtKvEptO0aWhWX7WWuoMtJVsuLCIinkGjaCsW4rVyDXGTfG8FQR8R90R8NPBV4/Q
	jA9bcz4gbudnk83xzmyX0V4xXaYTajyiFp9ipcuJDBp3HMhA+SSwmi49pX4y7jLTFjaK0rzfK38+C
	LlTX190TQbo6gCgyCe9wBLrWB2DrOGhS97mWfHShBKyuSwJnvuj05jsQSpRBHLIzTqys98SpYnEeu
	bHdKst1dcY7YLTeLlzlQq7zy0riMS86mk4l+f9bLtd8qMH3Nptf0Z2QYIdln9R06/xCKkJNX1se87
	6IbKVvf9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZC8z-0003EA-Mq; Fri, 07 Jun 2019 10:30:45 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZC8o-00036L-QD; Fri, 07 Jun 2019 10:30:36 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 03:30:32 -0700
X-ExtLoop1: 1
Received: from kuha.fi.intel.com ([10.237.72.189])
 by fmsmga001.fm.intel.com with SMTP; 07 Jun 2019 03:30:27 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Fri, 07 Jun 2019 13:30:26 +0300
Date: Fri, 7 Jun 2019 13:30:26 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v6 06/10] device connection: Add
 fwnode_connection_find_match()
Message-ID: <20190607103026.GE10298@kuha.fi.intel.com>
References: <1559115828-19146-1-git-send-email-chunfeng.yun@mediatek.com>
 <1559115828-19146-7-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bg08WKrSYDhXBjb5"
Content-Disposition: inline
In-Reply-To: <1559115828-19146-7-git-send-email-chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_033034_901037_8F65DD11 
X-CRM114-Status: GOOD (  20.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 Yu Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--bg08WKrSYDhXBjb5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, May 29, 2019 at 03:43:44PM +0800, Chunfeng Yun wrote:
> From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> 
> The fwnode_connection_find_match() function is exactly the
> same as device_connection_find_match(), except it takes
> struct fwnode_handle as parameter instead of struct device.
> That allows locating device connections before the device
> entries have been created.
> 
> Signed-off-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

This one is also missing your SoB.

There are now some other changes to the devcon API in Rafael's tree
[1] that will conflict with this one. I'm attaching a modified version
of the patch that is rebased on top of today's linux-next. If you use
it, you should make a note (probable in the cover letter) that the
series now depends on Rafael's tree.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/log/?h=linux-next


thanks,

-- 
heikki

--bg08WKrSYDhXBjb5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="0001-device-connection-Add-fwnode_connection_find_match.patch"

From ea4ebbfd00e6ddc7bb7ad32e2f921bfc67f2ff8f Mon Sep 17 00:00:00 2001
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Date: Wed, 22 May 2019 17:06:54 +0300
Subject: [PATCH] device connection: Add fwnode_connection_find_match()

The fwnode_connection_find_match() function is exactly the
same as device_connection_find_match(), except it takes
struct fwnode_handle as parameter instead of struct device.
That allows locating device connections before the device
entries have been created.

Signed-off-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
---
 drivers/base/devcon.c  | 43 ++++++++++++++++++++++++++++++------------
 include/linux/device.h | 10 +++++++---
 2 files changed, 38 insertions(+), 15 deletions(-)

diff --git a/drivers/base/devcon.c b/drivers/base/devcon.c
index f7035fc12b92..5bf9537bd738 100644
--- a/drivers/base/devcon.c
+++ b/drivers/base/devcon.c
@@ -12,9 +12,6 @@
 static DEFINE_MUTEX(devcon_lock);
 static LIST_HEAD(devcon_list);
 
-typedef void *(*devcon_match_fn_t)(struct device_connection *con, int ep,
-				   void *data);
-
 static void *
 fwnode_graph_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
 			  void *data, devcon_match_fn_t match)
@@ -60,6 +57,34 @@ fwnode_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
 	return NULL;
 }
 
+/**
+ * fwnode_connection_find_match - Find connection from a device node
+ * @fwnode: Device node with the connection
+ * @con_id: Identifier for the connection
+ * @data: Data for the match function
+ * @match: Function to check and convert the connection description
+ *
+ * Find a connection with unique identifier @con_id between @fwnode and another
+ * device node. @match will be used to convert the connection description to
+ * data the caller is expecting to be returned.
+ */
+void *fwnode_connection_find_match(struct fwnode_handle *fwnode,
+				   const char *con_id, void *data,
+				   devcon_match_fn_t match)
+{
+	void *ret;
+
+	if (!fwnode || !match)
+		return NULL;
+
+	ret = fwnode_graph_devcon_match(fwnode, con_id, data, match);
+	if (ret)
+		return ret;
+
+	return fwnode_devcon_match(fwnode, con_id, data, match);
+}
+EXPORT_SYMBOL_GPL(fwnode_connection_find_match);
+
 /**
  * device_connection_find_match - Find physical connection to a device
  * @dev: Device with the connection
@@ -83,15 +108,9 @@ void *device_connection_find_match(struct device *dev, const char *con_id,
 	if (!match)
 		return NULL;
 
-	if (fwnode) {
-		ret = fwnode_graph_devcon_match(fwnode, con_id, data, match);
-		if (ret)
-			return ret;
-
-		ret = fwnode_devcon_match(fwnode, con_id, data, match);
-		if (ret)
-			return ret;
-	}
+	ret = fwnode_connection_find_match(fwnode, con_id, data, match);
+	if (ret)
+		return ret;
 
 	mutex_lock(&devcon_lock);
 
diff --git a/include/linux/device.h b/include/linux/device.h
index e0649f6adf2e..fd06d75da206 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -773,10 +773,14 @@ struct device_connection {
 	struct list_head	list;
 };
 
+typedef void *(*devcon_match_fn_t)(struct device_connection *con, int ep,
+				   void *data);
+
+void *fwnode_connection_find_match(struct fwnode_handle *fwnode,
+				   const char *con_id, void *data,
+				   devcon_match_fn_t match);
 void *device_connection_find_match(struct device *dev, const char *con_id,
-				void *data,
-				void *(*match)(struct device_connection *con,
-					       int ep, void *data));
+				   void *data, devcon_match_fn_t match);
 
 struct device *device_connection_find(struct device *dev, const char *con_id);
 
-- 
2.20.1


--bg08WKrSYDhXBjb5
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--bg08WKrSYDhXBjb5--

