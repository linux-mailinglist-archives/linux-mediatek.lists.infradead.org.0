Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DCE1C9709
	for <lists+linux-mediatek@lfdr.de>; Thu,  7 May 2020 19:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oCCgU+I/Qsf+oKB1V2Zz/FxuQSco9DsHW9dBRtK5EOA=; b=d0c2mi7hyW5J0q
	LsAccF+ZUgMFTtsrgiIskN8qXLcPfIoJ9ZK/HW6+ZvZCBpE5XKh2FRbUoYiATl1W5xjZnD64l7bXL
	xvlHoAHp+xkLxB4dw8l5fontv6R6/nFecBBfTGVE2va2YnDH9bfNvqwUkTox+H7CpQwLQCbPhvajw
	ddJSvGROEQ/t020uwnChWsz+r3mVKzMU+GV0JwjDWp9WU4KZvWFvuZm5vo0dvFa9uzm8IR2xNt9MF
	xP9rXSOilEkVZXzyMKfKZEHwqXtiuG/gpNDPpXiGrv/6qoxYrG1WNu6B6lypa6uBenoaod3Hn+5vh
	WDWsPQlyKJDr5rsCpOiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjvM-0004T7-3V; Thu, 07 May 2020 17:03:04 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjvI-0004SD-Go
 for linux-mediatek@lists.infradead.org; Thu, 07 May 2020 17:03:02 +0000
Received: (wp-smtpd smtp.wp.pl 10793 invoked from network);
 7 May 2020 19:02:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1588870974; bh=pWsuXddhHdfzjfjL0oA+K3lu1UYNsC1ILHSc7LqdoVc=;
 h=From:To:Cc:Subject;
 b=O0B09BKk5uIvaXQjZjNkAYaAKxdSEuzcIS++CKZtyH4NMBu49N/D7t2HEtVKDhMUV
 tazwRfbsVkdkkdYRT0KUI4mLs8uYoOT8Xc4CkDM/egYRjVBrQU3xS50KECdtZH6zxT
 L2hIowXUVfTc5Ywc1Lt81stoogn9B8EebUzDpLRk=
Received: from unknown (HELO kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com)
 (kubakici@wp.pl@[163.114.132.1]) (envelope-sender <kubakici@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <nbd@nbd.name>; 7 May 2020 19:02:54 +0200
Date: Thu, 7 May 2020 10:02:46 -0700
From: Jakub Kicinski <kubakici@wp.pl>
To: Felix Fietkau <nbd@nbd.name>
Subject: Re: [PATCH] mt76: fix different licenses in same driver
Message-ID: <20200507100246.1e902bc8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <d32134a6-9673-521f-22ee-871aa2284af0@nbd.name>
References: <3a5cb822eb4cd81d32b5480f1235c992ea4fbe06.1587193872.git.ryder.lee@mediatek.com>
 <d32134a6-9673-521f-22ee-871aa2284af0@nbd.name>
MIME-Version: 1.0
X-WP-MailID: c01c1e78ec6834abc06a270938237615
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000001 [gZIj]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_100300_893620_733C8626 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kubakici[at]wp.pl]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Stanislaw Gruszka <sgruszka@redhat.com>,
 Sean Wang <sean.wang@mediatek.com>, linux-wireless@vger.kernel.org,
 linux-mediatek@lists.infradead.org,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>,
 Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 7 May 2020 15:30:24 +0200 Felix Fietkau wrote:
> Hi Ryder,
> 
> I think for this patch we need an explicit ACK from Stanislaw Gruszka
> and Jakub Kicinski (both Cc'd), because mt76x0 was licensed under GPL.

Thanks, yes, you definitely need an ack, especially from folks who have
their copyright on the files :/

My personal preference for the license was expressed clearly when the
code was written and it is GPL-only. Felix, if you prefer the clean up
I'm happy to ack, but I see no reason to downgrade the license at
vendor's request.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
