Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7B437EE1
	for <lists+linux-mediatek@lfdr.de>; Thu,  6 Jun 2019 22:33:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wiWD9uXZOE5nAlQ8QQJbOgxUoUamSycNH1dmDRqBHAo=; b=Tknlwu0HnEiATi
	ocan9iDNK1UPl0+jO55eIpJpwa91O8FYpA+PXKFZTBfzhTf6LLhX/KyrUblMXAvFxHV+azpUXgmk2
	EMbpWONcV/PV1a3cGlkrRwBzZfQ0flqNbOUU1C1jpDteq47H6qq85/mOcoWrwN228f3zPcvfQwSNw
	VjkQrkME+4Tif1Hq7ZGK2PHEvvnZn7ISjY4CvBgb0ZJyKeXOJ2Qy+UiTEXlfDSwKlLD6aHgKDQ0dI
	9sD2Q8u1+U27DZiRe2Ot8nxEwnupph0J9IOmlzOSvjqmqnSVigsy5pn8D53pGSDFJAKQuwZLnzO9u
	/9Lrhr8nxIzhyHrSrcrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYz4u-0005Jn-WE; Thu, 06 Jun 2019 20:33:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYz4m-0005DL-9q; Thu, 06 Jun 2019 20:33:33 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ED6AD2083E;
 Thu,  6 Jun 2019 20:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559853212;
 bh=q87OKfVjj0mX/LnJ1ud56rX5XuOQTLTaUHtBPjntLHQ=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=LSKQY5EiUT6032pBVcES7e23qYalScF4KLcg2mUdSgJBMhBU1Fd1EkbHTYNZRSGQK
 eoDGF9+nRl6IvLhQ3/jl/udnwef8wYxJcHLBjQbtjWKg30A5hZQhFS/71ZyMRlQUFA
 3XZ+DLAb+86I3osw9PSV72amfpAg2t2DbZHhoDtk=
MIME-Version: 1.0
In-Reply-To: <1556607888-10301-2-git-send-email-yong.liang@mediatek.com>
References: <1556607888-10301-1-git-send-email-yong.liang@mediatek.com>
 <1556607888-10301-2-git-send-email-yong.liang@mediatek.com>
To: Yong Liang <yong.liang@mediatek.com>, chunhui.dai@mediatek.com,
 drinkcat@chromium.org, eddie.huang@mediatek.com, erin.lo@mediatek.com,
 jamesjj.liao@mediatek.com, jasu@njomotys.info, mark.rutland@arm.com,
 matthias.bgg@gmail.com, mturquette@baylibre.com, owen.chen@mediatek.com,
 p.zabel@pengutronix.de, robh+dt@kernel.org, weiyi.lu@mediatek.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 2/2] clk: reset: Modify reset-controller driver
User-Agent: alot/0.8.1
Date: Thu, 06 Jun 2019 13:33:31 -0700
Message-Id: <20190606203331.ED6AD2083E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_133332_352634_EFBDA51B 
X-CRM114-Status: UNSURE (   5.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: "yong.liang" <yong.liang@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Forgot to mention, please Cc linux-clk@vger.kernel.org on clk drivers.

Quoting Yong Liang (2019-04-30 00:04:48)
> From: "yong.liang" <yong.liang@mediatek.com>
> 
> Set reset signal by a register and clear reset signal by another register for 8183.
> 
> Signed-off-by: yong.liang <yong.liang@mediatek.com>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
