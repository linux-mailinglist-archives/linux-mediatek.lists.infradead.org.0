Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 822141973AD
	for <lists+linux-mediatek@lfdr.de>; Mon, 30 Mar 2020 07:09:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9R7bqtDlbS1Z2mHEaNbMPuFSvdVg3/uIDrfV55z37eI=; b=qX6uX8fhptz3Jl
	uMZpDovTzCm0bp+pSMVggrt84RCNYwVdJ9ffVFq+UlyFfnTJDTpYoskURrZu4ylBuUyQNhSuGcCRg
	yLrnMC/5yiUE5qgmKclWmWwAjuRA7VguIAL6thJcCRAQGW5UMXzM313/Ugx1dWbE3FtiX4xwjEV0x
	IjFxC4v5D6eYjkZpd+aTmD0o6ns9Xd0DhkcWO9ueXcRu+oCtdva6LUO02QO76SSnBTCyXv8Y2CmLb
	va77vDMQsV70rkFL64+/9dvGPtTMZH+QKYPavfdD7U88JRTMWiWnOexaUhY20u8E17Cn/C/t5tgX6
	g7tV8DYIclY/47CC/1UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jImfm-0007jI-At; Mon, 30 Mar 2020 05:09:18 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jImfi-0007ie-7H
 for linux-mediatek@lists.infradead.org; Mon, 30 Mar 2020 05:09:16 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2775715C60D24;
 Sun, 29 Mar 2020 22:09:13 -0700 (PDT)
Date: Sun, 29 Mar 2020 22:09:12 -0700 (PDT)
Message-Id: <20200329.220912.1139584750455036593.davem@davemloft.net>
To: opensource@vdorst.com
Subject: Re: [PATCH net-next] net: dsa: mt7530: use resolved link config in
 mac_link_up()
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200327144412.100913-1-opensource@vdorst.com>
References: <20200327144412.100913-1-opensource@vdorst.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 29 Mar 2020 22:09:13 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_220914_262638_111EADC5 
X-CRM114-Status: UNSURE (   3.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: andrew@lunn.ch, landen.chao@mediatek.com, f.fainelli@gmail.com,
 frank-w@public-files.de, netdev@vger.kernel.org, sean.wang@mediatek.com,
 linux@armlinux.org.uk, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, vivien.didelot@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Ren=E9 van Dorst <opensource@vdorst.com>
Date: Fri, 27 Mar 2020 15:44:12 +0100

> Convert the mt7530 switch driver to use the finalised link
> parameters in mac_link_up() rather than the parameters in mac_config().
> =

> Signed-off-by: Ren=E9 van Dorst <opensource@vdorst.com>

Applied.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
