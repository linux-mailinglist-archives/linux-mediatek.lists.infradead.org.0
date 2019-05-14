Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 244311C10E
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 May 2019 05:39:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ofRZhabqh/kzf/6RG23vj6Xsjb4RaEETNNQ0djjQ9ZU=; b=iCVR9mr3Keqo6c
	cu07p0AU7VTWCuBc5SwSx521LJuZ/9t/3nxuH6ZL7PGRO+LZsL5/q+FlAHwRc7QmIWO4gaG0+oE17
	rBTexBOURBn7LAW9zB79Q8iBcQKTiN3WJECcLzisemo0FPnCdP172RZeE5CKEED2AUQAYmWA4xRKq
	Q2C2ZZgowjMJXkAiztdo28EKy51nl9DvmnV1C59ZYxofP1aGoJHHCuF+0+Y1AP/Bx5l2FhiE4ub0T
	/eoB1rsvbbZ0JvKPNipQbHGvVc1j2E6DXZBzXHAHMKPcOvQUWHrH7UN2VuY04vngh3Ne6NjH0S8sH
	JP6MCu/bhSrUP/OBwLjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQOHR-0001v7-SJ; Tue, 14 May 2019 03:39:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQOHO-0001uf-Bm; Tue, 14 May 2019 03:39:03 +0000
X-UUID: 7fcf8af0172f4ec9b658fa80ce779c60-20190513
X-UUID: 7fcf8af0172f4ec9b658fa80ce779c60-20190513
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1297938363; Mon, 13 May 2019 19:38:56 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 May 2019 20:38:54 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 14 May 2019 11:38:52 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 May 2019 11:38:51 +0800
Message-ID: <1557805131.24897.41.camel@mhfsdcap03>
Subject: Re: [v2, PATCH 0/4] fix some bugs in stmmac
From: biao huang <biao.huang@mediatek.com>
To: Andrew Lunn <andrew@lunn.ch>
Date: Tue, 14 May 2019 11:38:51 +0800
In-Reply-To: <20190514030016.GA19642@lunn.ch>
References: <1557800933-30759-1-git-send-email-biao.huang@mediatek.com>
 <20190514030016.GA19642@lunn.ch>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_203902_403497_01A07AEA 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Jose Abreu <joabreu@synopsys.com>, linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, jianguo.zhang@mediatek.com,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Andrew,
	Add a Fixes:tag in series v3, please review.

On Tue, 2019-05-14 at 05:00 +0200, Andrew Lunn wrote:
> On Tue, May 14, 2019 at 10:28:49AM +0800, Biao Huang wrote:
> > changes in v2:                                                                  
> >         1. update rx_tail_addr as Jose's comment                                
> >         2. changes clk_csr condition as Alex's proposition                      
> >         3. remove init lines in dwmac-mediatek, get clk_csr from dts instead.   
> 
> Hi Biao
> 
> Since these are fixes, could you provide a Fixes: tag for each one?
> 
> Thanks
> 	Andrew



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
