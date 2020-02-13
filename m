Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0225415B500
	for <lists+linux-mediatek@lfdr.de>; Thu, 13 Feb 2020 00:45:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6EGEGCTOq5+h77QGdYNo4rdrdtntKry6pc2sD1QhTtw=; b=WhQ23grqBrTk3n
	bwOgvT7Hta7hijddF9SXs95+Z6FxLqS6nPl3bV+cYUKxy8344jRsMNHwDs1yGjb0nUEUIto8bCrkW
	TlcyeHnehZDn7Ri0JUw/X5ReWVC2h5v7Jf2Ijne/wBJWdFmvLwXYLAQTcJit1ZktfXHjwe0vQD7MW
	Ow12zAQnLN/8nyvnwmIksmeKHbBYMpxowVhbE075T4EbY+6Rle25OZ3QUKY/WkYiHosk0Vgiq08DK
	wfXa2aiXKGQeAawSq278aG+eHwOisAI6G+ufC3KkN31adpj5POD7ren1NdNNhJ4gupQLYrf2dY5P5
	Jy8VHjpV2hWtb4D8XkiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j21gx-0000Jo-1a; Wed, 12 Feb 2020 23:45:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j21ga-0007WZ-Iu; Wed, 12 Feb 2020 23:44:53 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F90E206B6;
 Wed, 12 Feb 2020 23:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581551092;
 bh=1M3lO/lf9AWfvIAE3n4hv4ebm9MsTlrPuI3pVt0XwiI=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=gKNmOOaSejM7SuOkKHEMPhUSEUcyDAyifJf7mJT5rapx5BcH6wMPBNWB+oG4mmjET
 2x/6JgGAIVsMk6Pk35WyNYIXY6DkSk5SnurlOnEoCI3dt6Kn0CivuXKQ+wdi+ZRdTY
 DaWev8mu0p5NdeznMlDVKHnePkgFoCvSZwd8lHjI=
MIME-Version: 1.0
In-Reply-To: <1581067250-12744-1-git-send-email-macpaul.lin@mediatek.com>
References: <1581067250-12744-1-git-send-email-macpaul.lin@mediatek.com>
Subject: Re: [PATCH v7 0/7] Add basic SoC support for mt6765
From: Stephen Boyd <sboyd@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Evan Green <evgreen@chromium.org>,
 Fabien Parent <fparent@baylibre.com>, Joerg Roedel <jroedel@suse.de>,
 Macpaul Lin <macpaul.lin@mediatek.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Mars Cheng <mars.cheng@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Owen Chen <owen.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Ryder Lee <Ryder.Lee@mediatek.com>, Sean Wang <Sean.Wang@mediatek.com>,
 Shawn Guo <shawnguo@kernel.org>, Weiyi Lu <weiyi.lu@mediatek.com>,
 Will Deacon <will@kernel.org>, Yong Wu <yong.wu@mediatek.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, mtk01761 <wendell.lin@mediatek.com>
Date: Wed, 12 Feb 2020 15:44:51 -0800
Message-ID: <158155109134.184098.10100489231587620578@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_154452_644219_FA417388 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: CC Hwang <cc.hwang@mediatek.com>, Loda Chou <loda.chou@mediatek.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Quoting Macpaul Lin (2020-02-07 01:20:43)
> This patch adds basic SoC support for Mediatek's new 8-core SoC,
> MT6765, which is mainly for smartphone application.

Clock patches look OK to me. Can you resend them without the defconfig
and dts patches and address Matthias' question?

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
