Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6B62A5F6
	for <lists+linux-mediatek@lfdr.de>; Sat, 25 May 2019 20:03:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3zeLqKiM/tCJQWWCLR5jZgfhidLDruHs//qfXnXE48g=; b=nwk4IwifIQRqr+
	ZKygX+RMSO3EmcmPk4VyILqR2+LIHnjf30kudZg7GtHz/J/TxNxajJ8f3tiLIPBIa2Cob+7HE8RLM
	5+oAdO91YvHpFyoE7PkIOAkDll91m2biUfXtA2UP3ggPbx7T9l6FwG7lDAwcgKoQnEKiHztYLZryS
	ZwQnUQfD2sun1uKQAdrZ73kx38ye8krgA8ZQBxhBB/eqqxhxwjp40PP3LodELZvjSYb7LK35zGL5j
	z1S7kRkhPRkjFp15Hy5mUoLUsYPFCQhYLAsZhXMgeO5cgEjqVkrQjtaa/4xYEU+bQiY+ARGjj1BlT
	hQGZ3MP8BStgYfySDbeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUb0t-0005CQ-Mn; Sat, 25 May 2019 18:03:23 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb0k-00059X-30; Sat, 25 May 2019 18:03:16 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 282C814FC9282;
 Sat, 25 May 2019 11:02:53 -0700 (PDT)
Date: Sat, 25 May 2019 11:02:52 -0700 (PDT)
Message-Id: <20190525.110252.292904127953775877.davem@davemloft.net>
To: biao.huang@mediatek.com
Subject: Re: [v4, PATCH 0/3] fix some bugs in stmmac
From: David Miller <davem@davemloft.net>
In-Reply-To: <1558679169-26752-1-git-send-email-biao.huang@mediatek.com>
References: <1558679169-26752-1-git-send-email-biao.huang@mediatek.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 25 May 2019 11:02:53 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_110314_128175_4F5DBC1D 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.torgue@st.com, jianguo.zhang@mediatek.comi,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, boon.leong.ong@intel.com,
 joabreu@synopsys.com, linux-mediatek@lists.infradead.org,
 mcoquelin.stm32@gmail.com, matthias.bgg@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Biao Huang <biao.huang@mediatek.com>
Date: Fri, 24 May 2019 14:26:06 +0800

> changes in v4:                                                                  
>         since MTL_OPERATION_MODE write back issue has be fixed in the latest driver,
> remove original patch#3                                                         
>                                                                                 
> changes in v3:                                                                  
>         add a Fixes:tag for each patch                                          
>                                                                                 
> changes in v2:                                                                  
>         1. update rx_tail_addr as Jose's comment                                
>         2. changes clk_csr condition as Alex's proposition                      
>         3. remove init lines in dwmac-mediatek, get clk_csr from dts instead.   
>                                                                                 
> v1:                                                                             
> This series fix some bugs in stmmac driver                                      
> 3 patches are for common stmmac or dwmac4:                                      
>         1. update rx tail pointer to fix rx dma hang issue.                     
>         2. change condition for mdc clock to fix csr_clk can't be zero issue.   
>         3. write the modified value back to MTL_OPERATION_MODE.                 
> 1 patch is for dwmac-mediatek:                                                  
>         modify csr_clk value to fix mdio read/write fail issue for dwmac-mediatek

Series applied, thanks.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
