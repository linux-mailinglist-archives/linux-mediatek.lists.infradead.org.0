Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DD21FB449
	for <lists+linux-mediatek@lfdr.de>; Tue, 16 Jun 2020 16:27:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4wJNDgOoXrRCCkdWgY5tlYYZfQ4EiNkRiKtOjNV66U=; b=mfKiszOfi0VOI2
	9tAtmNYAVTaMLlpXwOZB3n5glfO3r7bswCPtttX4AoaVehJc/03RYF/AsWCQXZ+TcjslxjKrxCp5A
	7WI8rF7G00R0dE3aFjfbwe1gnrfughiS6K/YseYvtpjMlivo0JIjGcAKrjjK1EDIs+fCNARf39c4s
	fKUXFPNNFWTuTeZUTq2TYqPwDr2Zo1aazBq06dVpm2Qc5LmAP8XXdCkaxf8QfaZrfDtZB4D++ExU+
	ZR+cyrBqAEhAa0TcdrKfMGNCJIOnqka29Gr6qJiWn2AD6Xc1yWlqIkCevzg/sRhiozXl4abhYGEh8
	JcPDl4ZSrcqjgLGTJ9og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCYg-0001HH-SF; Tue, 16 Jun 2020 14:27:26 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlCYd-0001Fv-Co; Tue, 16 Jun 2020 14:27:24 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05GELOZQ057447;
 Tue, 16 Jun 2020 14:26:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=UepsmQC/DlQFZ6+UxfaNjoC9RmBOSxOKZ2W1AkmRQd8=;
 b=WvEeJyFmKL8HM4eLekulNPcOb25Sw7YajmFzrepd+1TsQe+PNe2o6it9fFwXghV3FsHv
 QdrFGubdjTeCc6kAWKTDSEoqMv3it70YtNHwfwRr3qSfXcxJVIBcqm6X7SGsetYqkHWx
 H7ruRtQFUVaMSNzeIOu+jnB9ul0qpA74I5CLeOsjFOWmZFGD+qOJ1lRDn7UN2JHhoajF
 f/9ecfn6gkdb7upj+cJi6IY4VZZEPZcXh9vvLg7+i5e+33eQa6zJ2K1MWUsjTMUYhONT
 ZCDycK9k04JLa7cAHqpl868otcTeoTLOGNWMgNDyB7bEprwRuViNVIe1IhKb+72uVtQ1 Lw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 31p6e5y3y1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 16 Jun 2020 14:26:56 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05GEODoW027404;
 Tue, 16 Jun 2020 14:26:56 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 31p6s7kbhq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Jun 2020 14:26:56 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05GEQfNL026862;
 Tue, 16 Jun 2020 14:26:42 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 16 Jun 2020 07:26:41 -0700
Date: Tue, 16 Jun 2020 17:26:24 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v4 2/3] mm, treewide: Rename kzfree() to kfree_sensitive()
Message-ID: <20200616142624.GO4282@kadam>
References: <20200616015718.7812-1-longman@redhat.com>
 <20200616015718.7812-3-longman@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616015718.7812-3-longman@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9653
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 mlxlogscore=886 adultscore=0 phishscore=0 bulkscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006160106
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9653
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 adultscore=0
 mlxscore=0 phishscore=0 mlxlogscore=893 lowpriorityscore=0 clxscore=1011
 suspectscore=0 spamscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006160106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_072723_526468_B4C6D2A8 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>, Michal Hocko <mhocko@suse.com>,
 linux-btrfs@vger.kernel.org, Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 David Sterba <dsterba@suse.cz>, David Howells <dhowells@redhat.com>,
 linux-mm@kvack.org, linux-sctp@vger.kernel.org, keyrings@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-stm32@st-md-mailman.stormreply.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 linux-scsi@vger.kernel.org, James Morris <jmorris@namei.org>,
 Matthew Wilcox <willy@infradead.org>, linux-wpan@vger.kernel.org,
 David Rientjes <rientjes@google.com>, "Serge E. Hallyn" <serge@hallyn.com>,
 linux-pm@vger.kernel.org, ecryptfs@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, virtualization@lists.linux-foundation.org,
 linux-integrity@vger.kernel.org, linux-nfs@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 linux-security-module@vger.kernel.org, target-devel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-crypto@vger.kernel.org,
 Johannes Weiner <hannes@cmpxchg.org>, Joe Perches <joe@perches.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 netdev@vger.kernel.org, wireguard@lists.zx2c4.com, linux-ppp@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Last time you sent this we couldn't decide which tree it should go
through.  Either the crypto tree or through Andrew seems like the right
thing to me.

Also the other issue is that it risks breaking things if people add
new kzfree() instances while we are doing the transition.  Could you
just add a "#define kzfree kfree_sensitive" so that things continue to
compile and we can remove it in the next kernel release?

regards,
dan carpenter


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
